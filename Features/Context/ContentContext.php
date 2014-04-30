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
        );
    }
}
