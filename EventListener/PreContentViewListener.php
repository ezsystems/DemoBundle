<?php
/**
 * File containing the PreContentViewListener class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\EventListener;

use eZ\Publish\Core\MVC\Symfony\Event\PreContentViewEvent;

class PreContentViewListener
{
    public function onPreContentView( PreContentViewEvent $event )
    {
        $contentView = $event->getContentView();
        $contentView->addParameters(
            array(
                'foo' => 'bar',
                'osTypes' => array( 'osx', 'linux', 'win' )
            )
        );
    }
}
