<?php
/**
 * File containing the FeatureContext class.
 *
 * This class contains specific feature context of the DemoBundle for Behat.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Features\Context;

use EzSystems\BehatBundle\Features\Context\BrowserContext;
use PHPUnit_Framework_Assert as Assertion;
use Behat\Behat\Context\Step;
use Behat\Gherkin\Node\TableNode;
use Behat\Behat\Exception\PendingException;

/**
 * Feature context.
 */
class FeatureContext extends BrowserContext
{
    /**
     * Initializes context with parameters from behat.yml.
     *
     * @param array $parameters
     */
    public function __construct( array $parameters )
    {
        parent::__construct( $parameters );

        // add Demo pages
        $this->pageIdentifierMap += array(
            "Search Page"   => "/content/search",
            "Site Map"      => "/content/view/sitemap/2",
        );

        // specify the tags for specific content
        $this->mainAttributes += array(
            "main"  => array( "class" => "main-content" ),
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

        return array(
            new Step\When( 'I am on "/content/view/sitemap/' . $id . '"' )
        );
    }
}
