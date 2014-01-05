<?php
/**
 * File containing the FrontpageController class.
 *
 * @copyright Copyright (C) 1999-2014 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use Symfony\Component\HttpFoundation\Response;
use ezcFeed;
use Exception;

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
        try
        {
            // Keep response in cache. TTL is configured in default_settings.yml
            $response->setSharedMaxAge( $this->container->getParameter( 'ezdemo.cache.feed_reader_ttl' ) );
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
        // In the case of exception raised in ezcFeed, return the empty response to fail nicely.
        catch ( Exception $e )
        {
            $this->get( 'logger' )->error( "An exception has been raised when fetching RSS feed: {$e->getMessage()}" );
            return $response;
        }
    }
}
