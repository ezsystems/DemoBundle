<?php
/**
 * File containing the ContentContext class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Features\Context;

use EzSystems\BehatBundle\Helpers\EzAssertion;
use Behat\Behat\Context\Step;
use Behat\Gherkin\Node\TableNode;
use PHPUnit_Framework_Assert as Assertion;

class ContentContext extends DemoContext
{
    /**
     * Set initial definitions
     */
    public function __construct()
    {
        parent::__construct();

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
     * @When I check site map for Location :location
     */
    public function iCheckSiteMapForLocation( $location )
    {
        $id = $this->getDemoObjectLocationByText( $location );
        $this->visit( '/content/view/sitemap/' . $id );
    }

    /**
     * @Given I am on tag page for :tag
     */
    public function iAmOnTagPageFor( $tag )
    {
        $this->visit( "/content/keyword/$tag" );
    }

    /**
     * @When /^I go to tag cloud for "(?P<tag>[^"]*)"$/
     */
    public function iCheckTagCloudFor( $tag )
    {
        $id = $this->getDemoObjectLocationByText( $tag );
        $this->visit( "/content/view/tagcloud/$id" );
    }

    /**
     * @Then I (should) see tag page for :tag
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
