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

use EzSystems\BehatBundle\Features\Context\FeatureContext as BaseFeatureContext;
use Behat\Behat\Context\Step;

/**
 * Feature context.
 */
class FeatureContext extends BaseFeatureContext
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
            "Search Page" => "/content/search",
            "User profile" => "/user/edit",
        );
    }

    /**
     * @Given /^I am logged in as "([^"]*)" with password "([^"]*)" using inlinelogin$/
     */
    public function iAmLoggedInAsWithPasswordUsingInlineLogin( $user, $password )
    {
        return array(
            new Step\Given( 'I am on "/"' ),
            new Step\Given( 'I follow "Login"' ),
            new Step\When( 'I fill in "Username" with "' . $user . '"' ),
            new Step\When( 'I fill in "Password" with "' . $password . '"' ),
            new Step\When( 'I press "Login"' ),
            new Step\Then( 'I should be redirected to "/"' ),
        );
    }
}
