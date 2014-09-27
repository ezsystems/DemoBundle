<?php
/**
 * File containing the eZDemoExtension class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\DependencyInjection;

use Symfony\Component\Config\Resource\FileResource;
use Symfony\Component\HttpKernel\DependencyInjection\Extension;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Loader\YamlFileLoader;
use Symfony\Component\Config\FileLocator;
use Symfony\Component\DependencyInjection\Extension\PrependExtensionInterface;
use Symfony\Component\Yaml\Yaml;

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
     * Loads DemoBundle configuration.
     *
     * @param ContainerBuilder $container
     */
    public function prepend( ContainerBuilder $container )
    {
        $configFile = __DIR__ . '/../Resources/config/ezdemo.yml';
        $config = Yaml::parse( file_get_contents( $configFile ) );
        $container->prependExtensionConfig( 'ezpublish', $config );
        $container->addResource( new FileResource( $configFile ) );

        $ezpageConfigFile = __DIR__ . '/../Resources/config/ezpage.yml';
        $ezpageConfig = Yaml::parse( file_get_contents( $ezpageConfigFile ) );
        $container->prependExtensionConfig( 'ezpublish', $ezpageConfig );
        $container->addResource( new FileResource( $ezpageConfigFile ) );

        $ezCommentsConfigFile = __DIR__ . '/../Resources/config/ezcomments.yml';
        $ezCommentsConfig = Yaml::parse( file_get_contents( $ezCommentsConfigFile ) );
        $container->prependExtensionConfig( 'ez_comments', $ezCommentsConfig );
        $container->addResource( new FileResource( $ezCommentsConfigFile ) );

        // ezdemo.ezdemo_frontend_group.siteaccess_group_enabled must be defined before we get here
        // or we assume true
        if ( !$container->hasParameter('ezdemo.ezdemo_frontend_group.siteaccess_group_enabled')
            || $container->getParameter('ezdemo.ezdemo_frontend_group.siteaccess_group_enabled') === true )
        {
            $siteAccessConfigFile = __DIR__ . '/../Resources/config/siteaccess.yml';
            $siteAccessConfig = Yaml::parse( file_get_contents( $siteAccessConfigFile ) );
            $container->prependExtensionConfig( 'ezpublish', $siteAccessConfig );
            $container->addResource( new FileResource( $siteAccessConfigFile ) );
        }
    }
}
