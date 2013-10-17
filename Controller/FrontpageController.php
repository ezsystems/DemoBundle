<?php
/**
 * File containing the FrontpageController class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use Symfony\Component\HttpFoundation\Response;
use ezcFeed;

/**
 * Controller for Frontpage content related requests. */
class FrontpageController extends Controller
{
    /**
     * Renders an RSS feed into HTML.
     * Response is cached for 1 hour.
     *
     * @param string $feedUrl
     * @param int $offset
     * @param int $limit
     *
     * @return Response
     */
    public function renderFeedBlockAction( $feedUrl, $offset = 0, $limit = 5 )
    {
        $response = new Response();
        // Keep response in cache for 1 hour.
        $response->setSharedMaxAge( 3600 );
        return $this->render(
            'eZDemoBundle:frontpage:feed_block.html.twig',
            array(
                'feed' => ezcFeed::parse( $feedUrl ),
                'offset' => $offset,
                'limit' => $limit
            ),
            $response
        );
    }
}
