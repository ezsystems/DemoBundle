<?php
/**
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */

namespace EzSystems\DemoBundle\PrivacyCookie;

use eZ\Publish\API\Repository\LocationService;
use eZ\Publish\API\Repository\URLAliasService;
use eZ\Publish\API\Repository\Values\Content\Content;
use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\API\Repository\Values\Content\URLAlias;
use EzSystems\PrivacyCookieBundle\Banner\Banner;
use EzSystems\PrivacyCookieBundle\Banner\BannerFactory;
use Symfony\Component\Translation\Translator;

interface DemoBundleBannerFactory
{
    /**
     * Builds the privacy cookie banner object, using any kind of data source.
     *
     * @param $bannerContent \eZ\Publish\API\Repository\Values\Content\Content
     * @param $locationService \eZ\Publish\API\Repository\LocationService
     * @param $urlAliasService \eZ\Publish\API\Repository\URLAliasService
     * @param $translator \Symfony\Component\Translation\Translator
     * @return \EzSystems\PrivacyCookieBundle\Banner\Banner
     */
    public static function build(Content $bannerContent, LocationService $locationService, URLAliasService $urlAliasService, Translator $translator);
}
