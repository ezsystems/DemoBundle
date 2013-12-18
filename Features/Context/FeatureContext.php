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
            "Search Page" => "/content/search",
            "Blog"   => "/Blog",
            "it's helping me optimizing my business" => "/Blog/It-s-helping-me-optimizing-my-business",
            "this will be our magic recipe" => "/Blog/This-will-be-our-magic-recipe",
            "January 2013" => "/Blog/%28month%29/1/%28year%29/2013",
            "March 2012" => "/Blog/(month)/3/(year)/2012",
            "Blog Post (1)" => "/content/keyword/Blog Post",
            "cxm (1)" => "/content/keyword/cxm",
            "eZ Publish (1)" => "/content/keyword/eZ Publish",
            "landing page (1)" => "/content/keyword/landing page",
            "Social (1)" => "/content/keyword/Social",
            "Blog Post" => "/content/keyword/Blog Post",
            "cxm" => "/content/keyword/cxm",
            "eZ Publish" => "/content/keyword/eZ Publish",
            "landing page" => "/content/keyword/landing page"
        );

        // specify the tags for specific content
        $this->mainAttributes += array(
            "tag cloud"     => array( "class" => "attribute-tag-cloud" ),
            "tag"           => array( "class" => "attribute-tag" ),
            "archive"       => array( "class" => "attribute-archive" )
        );
    }
}
