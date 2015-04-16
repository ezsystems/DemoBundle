<?php
/**
 * File containing the EzSystemsDemoBundle class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use EzSystems\DemoBundle\DependencyInjection\eZDemoCompilerPass;

class EzSystemsDemoBundle extends Bundle
{
    protected $name = 'eZDemoBundle';

    public function build( ContainerBuilder $container )
    {
        parent::build( $container );

        $container->addCompilerPass( new eZDemoCompilerPass() );
    }
}
