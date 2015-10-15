<?php
/**
 * File containing the DemoController class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Publish\Core\MVC\Symfony\View\View;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use Pagerfanta\Pagerfanta;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;

class DemoController extends Controller
{
    /**
     * Renders page header links with cache control.
     *
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function userLinksAction()
    {
        $response = new Response();
        $response->setSharedMaxAge(3600);
        $response->setVary('Cookie');

        return $this->render(
            'eZDemoBundle::page_header_links.html.twig',
            array(),
            $response
        );
    }

    /**
     * Renders article with extra parameters that controls page elements visibility such as image and summary.
     *
     * @param \eZ\Publish\Core\MVC\Symfony\View\View $view
     *
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showArticleAction(View $view)
    {
        $view->addParameters(
            [
                'showSummary' => $this->container->getParameter('ezdemo.article.full_view.show_summary'),
                'showImage' => $this->container->getParameter('ezdemo.article.full_view.show_image'),
            ]
        );

        return $view;
    }

    /**
     * Displays the list of blog_post
     * Note: This is a fully customized controller action, it will generate the response and call
     *       the view. Since it is not calling the ViewControler we don't need to match a specific
     *       method signature.
     *
     * @param \eZ\Publish\Core\MVC\Symfony\View\ContentView $view
     * @param \Symfony\Component\HttpFoundation\Request $request
     *
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function listBlogPostsAction(ContentView $view, Request $request)
    {
        $viewParameters = $request->attributes->get('viewParameters');

        // This could be changed to use dynamic parameters injection
        $languages = $this->getConfigResolver()->getParameter('languages');

        // Using the criteria helper (a demobundle custom service) to generate our query's criteria.
        // This is a good practice in order to have less code in your controller.
        $criteria = $this->get('ezdemo.criteria_helper')->generateListBlogPostCriterion(
            $view->getLocation(),
            $viewParameters,
            $languages
        );

        // Generating query
        $query = new Query();
        $query->query = $criteria;
        $query->sortClauses = array(
            new SortClause\Field('blog_post', 'publication_date', Query::SORT_DESC, $languages[0]),
        );

        // Initialize pagination.
        $pager = new Pagerfanta(
            new ContentSearchAdapter($query, $this->getRepository()->getSearchService())
        );
        $pager->setMaxPerPage($this->container->getParameter('ezdemo.blog.blog_post_list.limit'));
        $pager->setCurrentPage($request->get('page', 1));

        $view->addParameters(['pagerBlog' => $pager]);

        // The template identifier can be set from the controller action
        $view->setTemplateIdentifier('eZDemoBundle:full:blog.html.twig');

        return $view;
    }

    /**
     * Action used to display a blog_post
     *  - Adds the content's author to the response.
     * Note: This is a partly customized controller action. It is executed just before the original
     *       Viewcontroller's viewLocation method. To be able to do that, we need to implement it's
     *       full signature.
     *
     * @param ContentView $view
     *
     * @return View
     */
    public function showBlogPostAction(ContentView $view)
    {
        $author = $this->getRepository()->getUserService()->loadUser($view->getContent()->contentInfo->ownerId);
        $view->addParameters(['author' => $author]);

        return $view;
    }

    /**
     * Displays content having similar tags as the given location.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewTagRelatedContentAction(Location $location)
    {
        // TODO once the keyword service is available replace this subrequest by a full symfony one

        return $this->render(
            'eZDemoBundle:parts:related_content.html.twig',
            array('location' => $location)
        );
    }

    /**
     * Displays description, tagcloud, tags, ezarchive and calendar
     * of the parent's of a given location.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewParentExtraInfoAction(Location $location)
    {
        $repository = $this->getRepository();
        $parentLocation = $repository->getLocationService()->loadLocation($location->parentLocationId);

        // TODO once the keyword service is available replace part this subrequest by a full symfony one

        return $this->render(
            'eZDemoBundle:parts/blog:extra_info.html.twig',
            array('location' => $parentLocation)
        );
    }

    /**
     * Displays description, tagcloud, tags, ezarchive and calendar for a given location.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewExtraInfoAction(Location $location)
    {
        // TODO once the keyword service is available replace part this subrequest by a full symfony one

        return $this->render(
            'eZDemoBundle:parts/blog:extra_info.html.twig',
            array('location' => $location)
        );
    }

    /**
     * Displays "tip a friend" link for a given location.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewTipAFriendAction(Location $location)
    {
        return $this->render(
            'eZDemoBundle:parts/article:tip_a_friend.html.twig',
            array('location' => $location)
        );
    }

    /**
     * Displays star rating attribute for a given location.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewStarRatingAction(Location $location)
    {
        return $this->render(
            'eZDemoBundle:parts/article:star_rating.html.twig',
            array('location' => $location)
        );
    }

    /**
     * Displays breadcrumb for a given $locationId.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewBreadcrumbAction(Location $location)
    {
        /** @var WhiteOctober\BreadcrumbsBundle\Templating\Helper\BreadcrumbsHelper $breadcrumbs */
        $breadcrumbs = $this->get('white_october_breadcrumbs');

        $locationService = $this->getRepository()->getLocationService();
        $path = $location->path;

        // The root location can be defined at site access level
        $rootLocationId = $this->getConfigResolver()->getParameter('content.tree_root.location_id');

        /** @var eZ\Publish\Core\Helper\TranslationHelper $translationHelper */
        $translationHelper = $this->get('ezpublish.translation_helper');

        $isRootLocation = false;

        // Shift of location "1" from path as it is not a fully valid location and not readable by most users
        array_shift($path);

        for ($i = 0; $i < count($path); ++$i) {
            $location = $locationService->loadLocation($path[$i]);
            // if root location hasn't been found yet
            if (!$isRootLocation) {
                // If we reach the root location We begin to add item to the breadcrumb from it
                if ($location->id == $rootLocationId) {
                    $isRootLocation = true;
                    $breadcrumbs->addItem(
                        $translationHelper->getTranslatedContentNameByContentInfo($location->contentInfo),
                        $this->generateUrl($location)
                    );
                }
            }
            // The root location has already been reached, so we can add items to the breadcrumb
            else {
                $breadcrumbs->addItem(
                    $translationHelper->getTranslatedContentNameByContentInfo($location->contentInfo),
                    $this->generateUrl($location)
                );
            }
        }

        // We don't want the breadcrumb to be displayed if we are on the frontpage
        // which means we display it only if we have several items in it
        if (count($breadcrumbs) <= 1) {
            return new Response();
        }

        return $this->render(
            'eZDemoBundle::breadcrumb.html.twig'
        );
    }
}
