<?php
/**
 * This file is part of the eZ Publish Kernel package.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */
namespace EzSystems\DemoBundle\Installer;

use EzSystems\PlatformInstallerBundle\Installer\DbBasedInstaller;
use EzSystems\PlatformInstallerBundle\Installer\Installer;
use Symfony\Component\Filesystem\Filesystem;

class DemoInstaller extends DbBasedInstaller implements Installer
{
    public function importSchema()
    {
        $this->runQueriesFromFile(
            'vendor/ezsystems/ezpublish-kernel/data/mysql/schema.sql'
        );
    }

    public function importData()
    {
        $this->runQueriesFromFile(
            __DIR__ . '/../Resources/installer/sql/demo_data.sql'
        );
    }

    public function createConfiguration()
    {
        $this->copyConfigurationFile(
            __DIR__ . '/../Resources/installer/config_templates/ezpublish.yml',
            'ezpublish/config/ezpublish.yml'
        );

        $this->copyConfigurationFile(
            'vendor/ezsystems/ezpublish-kernel/eZ/Bundle/PlatformInstallerBundle/src/Resources/config_templates/common/ezpublish_dev.yml',
            'ezpublish/config/ezpublish_dev.yml'
        );

        $this->copyConfigurationFile(
            'vendor/ezsystems/ezpublish-kernel/eZ/Bundle/PlatformInstallerBundle/src/Resources/config_templates/common/ezpublish_prod.yml',
            'ezpublish/config/ezpublish_prod.yml'
        );
    }

    public function importBinaries()
    {
        $this->output->writeln('Copying storage directory contents...');
        $fs = new Filesystem();
        $fs->mkdir('web/var/ezdemo_site');
        $fs->mirror(
            'vendor/ezsystems/demobundle-data/data/storage',
            'web/var/ezdemo_site/storage'
        );
    }
}
