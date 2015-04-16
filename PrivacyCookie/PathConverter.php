<?php
/**
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */

namespace EzSystems\DemoBundle\PrivacyCookie;

use eZ\Publish\API\Repository\LocationService;
use eZ\Publish\API\Repository\URLAliasService;

class PathConverter
{
    /**
     * Convert url path to content ID.
     *
     * @param \eZ\Publish\API\Repository\URLAliasService $urlAliasService
     * @param \eZ\Publish\API\Repository\LocationService $locationService
     * @param string $pathString
     * @return int
     */
    public static function getContentId( URLAliasService $urlAliasService, LocationService $locationService, $pathString )
    {
        $alias = $urlAliasService->lookup( $pathString );
        return $locationService->loadLocation( $alias->destination )->contentId;
    }
}
