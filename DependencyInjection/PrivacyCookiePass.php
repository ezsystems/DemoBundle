<?php
/**
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */

namespace EzSystems\DemoBundle\DependencyInjection;

use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Compiler\CompilerPassInterface;

class PrivacyCookiePass implements CompilerPassInterface
{
    public function process( ContainerBuilder $container )
    {
        if ( $container->hasDefinition( 'ez_privacy_cookie.twig.extension' ) === false )
        {
            return;
        }

        if ( $container->hasDefinition( 'ezdemo.ez_content_banner_factory' ) === false )
        {
            return;
        }

        $definition = $container->getDefinition( 'ez_privacy_cookie.twig.extension' );
        $definition->replaceArgument( 1, $container->getDefinition( 'ezdemo.ez_content_banner_factory' ) );
    }
}
