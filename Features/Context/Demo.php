<?php
/**
 * File containing the Demo Context class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Features\Context;

use EzSystems\BehatBundle\Context\Browser\Context;
use EzSystems\BehatBundle\Helper\EzAssertion;
use PHPUnit_Framework_Assert as Assertion;

/**
 * Demo context base class
 */
class Demo extends Context
{
    /**
     * Set initial definitions
     */
    public function __construct()
    {
        parent::__construct();

        $this->pageIdentifierMap += array(
            "search" => "/content/search",
            "premium_article" => "/Premium-article"
        );

        $this->mainAttributes += array(
            'ez logo' => array( "class" => "logo", "href" => "/" )
        );
    }

    /**
     * @When I search for :search
     */
    public function iSearchFor( $search )
    {
        // workaround to get the search box that doesn't have a unique way to do it
        $elements = $this->getXpath()->findFields( 'ezdemo_simple_search[searchText]' );
        Assertion::assertEquals(
            2,
            count( $elements ),
            'Expected to find 2 search boxes but found ' . count( $elements )
        );
        $elements[1]->setValue( $search );

        $this->iClickAtButton( 'Search' );
    }

    /**
     * @When I click at eZ Logo image
     */
    public function iClickAtEzLogoImage()
    {
        $el = $this->getXpath()->findXpath( $this->makeXpathForBlock( 'ez logo' ) );
        EzAssertion::assertSingleElement( 'eZ Logo', $el, null, 'image link' );
        $el[0]->click();
    }

    /**
     * @Then I (should) see :total search result(s)
     */
    public function iSeeSearchResults( $total )
    {
        $resultCountElement = $this->getXpath()->findXpath( "//div[@class = 'feedback']" );

        EzAssertion::assertSingleElement( 'search feedback', $resultCountElement );

        Assertion::assertRegExp(
            "/Search for \"(.*)\" returned {$total} matches/",
            $resultCountElement[0]->getText()
        );
    }
}
