<?php
/**
 * File containing the ContentContext class.
 *
 * This class contains specific feature context of the DemoBundle with content
 * for Behat.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Features\Context;

use EzSystems\DemoBundle\Features\Context\FeatureContext;
use Behat\Behat\Context\Step;
use Behat\Behat\Exception\PendingException;
use PHPUnit_Framework_Assert as Assertion;

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
            "tag cloud" => "/content/view/tagcloud/2",
        );

        // specify the tags for specific content
        $this->mainAttributes += array(
            "ez logo" => array( "class" => "logo", "href" => "/" ),
            "main content" => array( "class" => "main-content" ),
        );
    }

    /**
     * This is an helper to retrieve the id of a Content object so that it can
     * be used on links for locations
     *
     * @param string $text Text identifier for a location
     *
     * @return int
     *
     * @throws PendingException When location is not defined
     */
    protected function getDemoObjectLocationByText( $text )
    {
        switch ( strtolower( $text ) )
        {
            case 'shopping':
                return 74;
            case 'getting started':
                return 61;
        }

        throw new PendingException( "Location for '$text' not defined." );
    }

    /**
     * @When /^I check site map for Location "(?P<location>[^"]*)"$/
     */
    public function iCheckSiteMapForLocation( $location )
    {
        $id = $this->getDemoObjectLocationByText( $location );
        return new Step\When( 'I am on "/content/view/sitemap/' . $id . '"' );
    }

    /**
     * @Given /^I am on tag page for "(?P<tag>[^"]*)"$/
     */
    public function iAmOnTagPageFor( $tag )
    {
        return new Step\When( "I am on \"/content/keyword/$tag\"" );
    }

    /**
     * @When /^I go to tag cloud for "(?P<tag>[^"]*)"$/
     */
    public function iCheckTagCloudFor( $tag )
    {
        $id = $this->getDemoObjectLocationByText( $tag );
        return new Step\When( "I am on \"/content/view/tagcloud/$id\"" );
    }

    /**
     * @Then /^I see tag page for "(?P<tag>[^"]*)"$/
     */
    public function iSeeTagPageFor( $tag )
    {
        $currentUrl = $this->getUrlWithoutQueryString( $this->getSession()->getCurrentUrl() );

        $expectedUrl = $this->locatePath( "/content/keyword/$tag" );

        Assertion::assertEquals(
            $expectedUrl,
            $currentUrl,
            "Unexpected URL of the current site. Expected: '$expectedUrl'. Actual: '$currentUrl'."
        );
    }
}
