<?php
/**
 * File containing the FooterController class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Values\Content\Content;
use Symfony\Component\HttpFoundation\Response;

class FooterController extends Controller
{
    /**
     * Footer main action.
     *
     * @return Response
     */
    public function indexAction()
    {
        $footerContentId = $this->container->getParameter( 'ezdemo.footer.content_id' );
        $footerContent = $this->getRepository()->getContentService()->loadContent( $footerContentId );

        $response = new Response();
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        $response->headers->set( 'X-Location-Id', $footerContent->contentInfo->mainLocationId );
        $response->setVary( 'X-User-Hash' );

        return $this->render(
            "eZDemoBundle::page_footer.html.twig",
            array(
                "content" => $footerContent
            ),
            $response
        );
    }

    /**
     * Return latest content for footer.
     *
     * @param Content $currentContent
     *
     * @return Response
     */
    public function latestContentAction( Content $currentContent )
    {
        $locationService = $this->getRepository()->getLocationService();

        // Get the root location through ConfigResolver.
        $rootLocationId = $this->getConfigResolver()->getParameter( 'content.tree_root.location_id' );
        $rootLocation = $locationService->loadLocation( $rootLocationId );

        $response = new Response;
        $response->setPublic();
        $response->setSharedMaxAge( 86400 );
        $response->headers->set( 'X-Location-Id', $rootLocationId );
        $response->setVary( 'X-User-Hash' );

        // Build our exclude criterion.
        // We just want to exclude locations for current content which are under root location.
        $excludeLocations = $locationService->loadLocations( $currentContent->contentInfo, $rootLocation );
        $excludeCriterion = $this
            ->get( 'ezdemo.criteria_helper' )
            ->generateLocationIdExcludeCriterion( $excludeLocations );

        // Retrieve latest content through the MenuHelper.
        // We only want articles that are located somewhere in the tree under root location.
        $latestContent = $this->get( 'ezdemo.menu_helper' )->getLatestContent(
            $rootLocation,
            $this->container->getParameter( 'ezdemo.footer.latest_content.content_types' ),
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
}
