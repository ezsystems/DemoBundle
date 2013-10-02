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
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class DemoController extends Controller
{
    /**
     * Renders the top menu, with cache control
     *
     * @param int $locationId
     * @param array $excludeContentTypes
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function topMenuAction( $locationId, array $excludeContentTypes = array() )
    {
        // Setting HTTP cache for the response to be public and with a TTL of 1 day.
        $response = new Response;
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        // Menu will expire when top location cache expires.
        $response->headers->set( 'X-Location-Id', $locationId );
        // Menu might vary depending on user permissions, so make the cache vary on the user hash.
        $response->setVary( 'X-User-Hash' );

        // Generate criterion from $excludeContentTypes and pass it to the menu helper.
        $excludeCriterion = $this->get( 'ezdemo.criteria_helper' )->generateContentTypeExcludeCriterion( $excludeContentTypes );
        $contentList = $this->get( 'ezdemo.menu_helper' )->getTopMenuContent( $locationId, $excludeCriterion );
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

    /**
     * Renders the latest content for footer, with cache control
     *
     * @param string $pathString
     * @param string $contentTypeIdentifier
     * @param int $limit
     * @param array $excludeLocations
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function latestContentAction( $pathString, $contentTypeIdentifier, $limit, array $excludeLocations = array() )
    {
        $tmp = explode( '/', trim( $pathString, '/' ) );
        $locationId = end( $tmp );
        $response = new Response;
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        $response->headers->set( 'X-Location-Id', $locationId );
        $response->setVary( 'X-User-Hash' );

        $excludeCriterion = $excludeLocations ? $this->get( 'ezdemo.criteria_helper' )->generateLocationIdExcludeCriterion( $excludeLocations ) : null;
        $latestContent = $this->get( 'ezdemo.menu_helper' )->getLatestContent(
            $pathString,
            array( $contentTypeIdentifier ),
            $excludeCriterion,
            $this->container->getParameter( 'ezdemo.footer.latest_content.limit' )
        );

        return $this->render(
            'eZDemoBundle:footer:latest_content.html.twig',
            array(
                'latestContent' => $latestContent
            ),
            $response
        );
    }

    public function footerAction( $locationId )
    {
        $response = new Response;
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        $response->headers->set( 'X-Location-Id', $locationId );
        $response->setVary( 'X-User-Hash' );

        $location = $this->getRepository()->getLocationService()->loadLocation( $locationId );
        $content = $this->getRepository()->getContentService()->loadContent( $location->contentId );

        return $this->render(
            "eZDemoBundle::page_footer.html.twig",
            array(
                "content" => $content
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
}
