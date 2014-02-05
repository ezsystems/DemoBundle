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

use EzSystems\BehatBundle\Features\Context\BrowserContext;

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
        $this->parameters = $parameters;
        $this->pageIdentifierMap += array(
            "Search" => "/content/search",
        );
    }

    /**
     * @Given /^I am changing password$/
     */
    public function iEditPassword()
    {
        return array(
            new Step\Given( 'I am on "My profile" page' ),
            new Step\When( 'I click at "Change password" button' ),
            new Step\Then( 'I see "Change password" page' ),
        );
    }
}
