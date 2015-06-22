<?php
/**
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */

namespace EzSystems\DemoBundle\PrivacyCookie;

use eZ\Publish\API\Repository\LocationService;
use eZ\Publish\API\Repository\URLAliasService;
use eZ\Publish\API\Repository\ContentService;
use Symfony\Component\Translation\Translator;

interface DemoBundleBannerFactory
{
    /**
     * Builds the privacy cookie `Banner` object, using any kind of data source.
     *
     * @param $bannerOptions array
     * @param $locationService \eZ\Publish\API\Repository\LocationService
     * @param $contentService \eZ\Publish\API\Repository\ContentService
     * @param $urlAliasService \eZ\Publish\API\Repository\URLAliasService
     * @param $translator \Symfony\Component\Translation\Translator
     * @return \EzSystems\PrivacyCookieBundle\Banner\Banner
     */
    public static function build( array $bannerOptions, LocationService $locationService, ContentService $contentService, URLAliasService $urlAliasService, Translator $translator );
}
