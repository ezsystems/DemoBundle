<?php
/**
 * File containing the ContentContext class.
 *
 * This class contains specific feature context of the DemoBundle with content
 * for Behat.
 *
 * @copyright Copyright (C) 1999-2014 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Features\Context;

use EzSystems\DemoBundle\Features\Context\FeatureContext;
use Behat\Behat\Context\Step;

/**
 * Feature context.
 */
class ContentContext extends FeatureContext
{
    public function __construct( array $parameters )
    {
        parent::__construct( $parameters );
        $this->pageIdentifierMap += array(
            "search" => "/content/search",
            "site map" => "/content/view/sitemap/2",
        );

        // specify the tags for specific content
        $this->mainAttributes += array(
            "ez logo" => array( "class" => "logo", "href" => "/" ),
            "main content" => array( "class" => "main-content" ),
        );
    }

    /**
     * @When /^I check site map for Location "([^"]*)"$/
     *
     * @todo Change the way it fetches the ID for the specific page
     */
    public function iCheckSiteMapForLocation( $location )
    {
        switch ( strtolower( $location ) ) {
            case "shopping":
                $id = 74;
                break;

            default:
                throw new PendingException( "Location for '$location' not defined." );
        }

        return new Step\When( 'I am on "/content/view/sitemap/' . $id . '"' );
    }
}
