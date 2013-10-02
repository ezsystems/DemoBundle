<?php
/**
 * File containing the eZDemoExtension class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\DependencyInjection;

use Symfony\Component\HttpKernel\DependencyInjection\Extension;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Loader\YamlFileLoader;
use Symfony\Component\Config\FileLocator;
use Symfony\Component\DependencyInjection\Extension\PrependExtensionInterface;

class eZDemoExtension extends Extension implements PrependExtensionInterface
{
    /**
     * Loads a specific configuration.
     *
     * @param array $config    An array of configuration values
     * @param \Symfony\Component\DependencyInjection\ContainerBuilder $container
     */
    public function load( array $config, ContainerBuilder $container )
    {
        $loader = new YamlFileLoader(
            $container,
            new FileLocator( __DIR__ . '/../Resources/config' )
        );

        // Base services override
        $loader->load( 'services.yml' );
        // Default settings
        $loader->load( 'default_settings.yml' );
    }

    /**
     * Automatically imports the layouts and the blocks
     *
     * @param ContainerBuilder $container
     */
    public function prepend( ContainerBuilder $container )
    {
        $loader = new YamlFileLoader(
            $container,
            new FileLocator( __DIR__ . '/../Resources/config' )
        );
        $loader->load( 'ezpage.yml' );

        $container->prependExtensionConfig(
            'ezpublish',
            array(
                'ezpage' => array(
                    'layouts' => $container->getParameter( 'ezdemo.ezpage.layouts' ),
                    'blocks' => $container->getParameter( 'ezdemo.ezpage.blocks' ),
                    // by default, all layouts and blocks are enabled when
                    // DemoBundle is enabled
                    'enabledLayouts' => array_keys( $container->getParameter( 'ezdemo.ezpage.layouts' ) ),
                    'enabledBlocks' => array_keys( $container->getParameter( 'ezdemo.ezpage.blocks' ) )
                )
            )
        );
    }
}
