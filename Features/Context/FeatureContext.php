<?php
/**
 * File containing the FeatureContext class.
 *
 * This class contains specific feature context of the DemoBundle for Behat.
 *
 * @copyright Copyright (C) 1999-2014 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Features\Context;

use EzSystems\BehatBundle\Features\Context\Browser\BrowserContext;

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
        $this->parameters = $parameters;
        $this->pageIdentifierMap += array(
            "Search" => "/content/search",
        );
    }

    /**
     * @Then /^I do not see the website toolbar$/
     */
    public function iDoNotSeeTheWebsiteToolbar()
    {
        $this->assertElementNotOnPage( 'div#ezwt' );
    }

    /**
     * @Then /^I see the website toolbar$/
     */
    public function iSeeTheWebsiteToolbar()
    {
        $this->assertElementOnPage( 'div#ezwt' );
    }
}
