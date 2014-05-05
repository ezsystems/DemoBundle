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
use Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\TableNode;
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
            "discover ez publish 5" => "/Discover-eZ-Publish-5",
            "shop basket" => "shop/basket",
            "ez.no" => "http://ez.no/",
        );

        // specify the tags for specific content
        $this->mainAttributes += array(
            "ez logo" => array( "class" => "logo", "href" => "/" ),
            "main content" => array( "class" => "main-content" ),
            "ez publish - man jacket" => array( "xpath" => "//article[.//h3[text()='eZ Publish - Man jacket']]" ),
            "ez news" => array( "xpath" => "//div[contains(@class,'block-type-feed-reader')]/article" ),
            "selected video" => array( "class" => "block-type-video", "tag" => "div" ),
            "tags" => array( "class" => "block-type-tagcloud " ),
        );

        $this->fileSource += array(
            "eZ Publish Optimize" => "/content/download/107/571/version/1/file/ezshortintro.mp4",
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
     * @When /^I fill "(?P<field>[^"]*)" Buy field with "(?P<value>[^"]*)"$/
     */
    public function iFillBuyFieldWith( $field, $value )
    {
        $literal = $this->literal( $field );
        $xpath = "//article[.//h3[text()={$literal}]]//input";
        $el = $this->getSession()->getPage()->find( 'xpath', $xpath );
        Assertion::assertNotNull( $el, "Input not found " . "\"$field\"" );

        $el->setValue( $value );
    }

    /**
     * @Then /^I see group elements:$/
     */
    public function iSeeGroupElements( TableNode $table )
    {
        $hash = $table->getHash();
        foreach ( $hash as $row )
        {
            $title = $row['elements'];
            return ( new Step\Then( "I see \"{$title}\" title" ));
        }
    }

    /**
     * @Then /^I see keyword page for "(?P<keyword>[^"]*)"$/
     */
    public function iSeeKeywordPageFor( $keyword )
    {
        return new Step\Then( "I am on \"/content/keyword/{$keyword}\"" );
    }

    /**
     *  @Then /^I see Shop Add page for (?P<number>\d+) "(?P<product>[^"]*)" items$/
     */
    public function iSeeShopAddPageForItems( $items, $product )
    {
        switch ( $product )
        {
            case 'eZ Publish - Man jacket':
                $shopProduct = 77;
                break;
            case 'eZ Publish Community - iPhone 4 Case':
                $shopProduct = 74;
                break;
            default :
                throw new PendingException( "Product '$product' does not exists." );
        }

        return new Step\Then( "I should be on \"shop/add/{$shopProduct}/{$items}\"" );
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

    /**
     * @Then /^I see Shop Basket page$/
     */
    public function iSeeShopBasketPage()
    {
        // The redirection handling in goutte is not working correctly
        // This can be done possibly using wait's in javascript, but we
        // considered that this is not the correct solution.
        // Some more investigation will be made to fix the redirect issue

        throw new PendingException( "Redirects from buy button are not beeing correctly handled" );

        // return array (
        // new Step\Then("I should be on \"/content/action\""),
        // new Step\Then("I should be redirected"),
        // new Step\Then("I see \"Shop Basket\" page"),
        // );
    }
}
