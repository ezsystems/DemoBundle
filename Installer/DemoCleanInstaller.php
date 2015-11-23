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

class DemoCleanInstaller extends DbBasedInstaller implements Installer
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
            __DIR__ . '/../Resources/installer/sql/demo_clean_data.sql'
        );
    }

    public function createConfiguration()
    {
        $this->copyConfigurationFile(
            __DIR__ . '/../Resources/installer/config_templates/ezplatform.yml',
            'ezpublish/config/ezplatform.yml'
        );
    }

    public function importBinaries()
    {
    }
}
