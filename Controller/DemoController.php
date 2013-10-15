<?php
/**
 * File containing the MyController class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use Pagerfanta\Pagerfanta;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;

class DemoController extends Controller
{
    /**
     * Renders the top menu, with cache control
     *
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function topMenuAction()
    {
        $rootLocationId = $this->getConfigResolver()->getParameter( 'content.tree_root.location_id' );

        // Setting HTTP cache for the response to be public and with a TTL of 1 day.
        $response = new Response;
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        // Menu will expire when top location cache expires.
        $response->headers->set( 'X-Location-Id', $rootLocationId );
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary( 'X-User-Hash' );

        // Generate criterion from $excludeContentTypes and pass it to the menu helper.
        $excludeCriterion = $this->get( 'ezdemo.criteria_helper' )
            ->generateContentTypeExcludeCriterion(
                // Get contentType identifiers we want to exclude from configuration (see default_settings.yml).
                $this->container->getParameter( 'ezdemo.top_menu.content_types_exclude' )
            );
        $contentList = $this->get( 'ezdemo.menu_helper' )->getTopMenuContent( $rootLocationId, $excludeCriterion );
        $locationList = array();
        // Looping against search results to build $locationList
        // Both arrays will be indexed by contentId so that we can easily refer to an element in a list from another element in the other list
        // See page_topmenu.html.twig
        foreach ( $contentList as $contentId => $content )
        {
            $locationList[$contentId] = $this->getRepository()->getLocationService()->loadLocation( $content->contentInfo->mainLocationId );
        }

        return $this->render(
            'eZDemoBundle::page_topmenu.html.twig',
            array(
                'locationList' => $locationList,
                'contentList' => $contentList,
            ),
            $response
        );
    }

    public function userLinksAction()
    {
        $response = new Response();
        $response->setSharedMaxAge( 3600 );
        $response->setVary( 'Cookie' );

        return $this->render(
            "eZDemoBundle::page_header_links.html.twig",
            array(),
            $response
        );
    }

    /**
     * Displays the list of blog_post
     * Note: This is a fully customized controller action, it will generate the response and call
     *       the view. Since it is not calling the ViewControler we don't need to match a specific
     *       method signature.
     *
     * @param int $locationId of a blog
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function listBlogPostsAction( $locationId )
    {
        $response = new Response();

        // Setting default cache configuration (you can override it in you siteaccess config)
        $response->setSharedMaxAge( $this->getConfigResolver()->getParameter( 'content.default_ttl' ) );

        // Make the response location cache aware for the reverse proxy
        $response->headers->set( 'X-Location-Id', $locationId );
        $response->setVary( 'X-User-Hash' );

        $viewParameters = $this->getRequest()->attributes->get( 'viewParameters' );

        // TODO keyword search is not implemented in the public API yet, so we forward to a legacy view
        if ( !empty( $viewParameters['tag'] ) )
        {
            $tag = $viewParameters['tag'];

            return $this->redirect(
                $this->generateUrl(
                    'ez_legacy',
                    array( 'module_uri' => '/content/keyword/' . $tag )
                )
            );
        }

        // Getting location and content from ezpublish dedicated services
        $repository = $this->getRepository();
        $location = $repository->getLocationService()->loadLocation( $locationId );
        $content = $repository
            ->getContentService()
            ->loadContentByContentInfo( $location->getContentInfo() );

        // Using the criteria helper (a demobundle custom service) to generate our query's criteria.
        // This is a good practice in order to have less code in your controller.
        $criteria = $this->get( 'ezdemo.criteria_helper' )->generateListBlogPostCriterion(
            $location, $viewParameters
        );

        // Generating query
        $query = new Query();
        $query->criterion = $criteria;
        $query->sortClauses = array(
            new SortClause\Field( 'blog_post', 'publication_date', Query::SORT_DESC )
        );

        // Initialize pagination.
        $pager = new Pagerfanta(
            new ContentSearchAdapter( $query, $this->getRepository()->getSearchService() )
        );
        $pager->setMaxPerPage( $this->container->getParameter( 'ezdemo.blog.blog_post_list.limit' ) );
        $pager->setCurrentPage( $this->getRequest()->get( 'page', 1 ) );

        return $this->render(
            'eZDemoBundle:full:blog.html.twig',
            array(
                'location' => $location,
                'content' => $content,
                'pagerBlog' => $pager
            ),
            $response
        );
    }

    /**
     * Action used to display a blog_post
     *  - Adds the content's author to the response.
     * Note: This is a partly customized controller action. It is executed just before the original
     *       Viewcontroller's viewLocation method. To be able to do that, we need to implement it's
     *       full signature.
     *
     * @param $locationId
     * @param $viewType
     * @param bool $layout
     * @param array $params
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showBlogPostAction( $locationId, $viewType, $layout = false, array $params = array() )
    {
        // We need the author, whatever the view type is.
        $repository = $this->getRepository();
        $location = $repository->getLocationService()->loadLocation( $locationId );
        $author = $repository->getUserService()->loadUser( $location->getContentInfo()->ownerId );

        // TODO once the keyword service is available, load the number of keyword for each keyword

        // Delegate view rendering to the original ViewController
        // (makes it possible to continue using defined template rules)
        // We just add "author" to the list of variables exposed to the final template
        return $this->get( 'ez_content' )->viewLocation(
            $locationId,
            $viewType,
            $layout,
            array( 'author' => $author )
        );
    }

    /**
     * Displays content having similar tags as the given location
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewTagRelatedContentAction( Location $location )
    {
        // TODO once the keyword service is available replace this subrequest by a full symfony one

        return $this->render(
            'eZDemoBundle:parts:related_content.html.twig',
            array( 'location' => $location )
        );
    }

    /**
     * Displays description, tagcloud, tags, ezarchive and calendar
     * of the parent's of a given location
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewParentExtraInfoAction( Location $location )
    {
        $repository = $this->getRepository();
        $parentLocation = $repository->getLocationService()->loadLocation( $location->parentLocationId );

        // TODO once the keyword service is available replace part this subrequest by a full symfony one

        return $this->render(
            'eZDemoBundle:parts/blog:extra_info.html.twig',
            array( 'location' => $parentLocation )
        );
    }

    /**
     * Displays description, tagcloud, tags, ezarchive and calendar for a given location
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewExtraInfoAction( Location $location )
    {
        // TODO once the keyword service is available replace part this subrequest by a full symfony one

        return $this->render(
            'eZDemoBundle:parts/blog:extra_info.html.twig',
            array( 'location' => $location )
        );
    }

}
