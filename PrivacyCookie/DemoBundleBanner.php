<?php
/**
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */

namespace EzSystems\DemoBundle\PrivacyCookie;

use eZ\Publish\API\Repository\LocationService;
use eZ\Publish\API\Repository\URLAliasService;
use eZ\Publish\API\Repository\Values\Content\Content;
use EzSystems\PrivacyCookieBundle\Banner\Banner;
use EzSystems\DemoBundle\PrivacyCookie;
use Symfony\Component\Translation\Translator;

/**
 * Builds a Privacy Cookie Banner object based on a configured Content Object.
 */
class DemoBundleBanner implements DemoBundleBannerFactory
{
    public static function build( Content $bannerContent, LocationService $locationService, URLAliasService $urlAliasService, Translator $translator )
    {
        $banner = new Banner();

        $banner->caption = $bannerContent->getFieldValue( 'intro' )->xml->textContent;
        $banner->policyPageUrl = $urlAliasService->reverseLookup(
            $locationService->loadLocation( $bannerContent->contentInfo->mainLocationId )
        )->path;
        $banner->learnMoreText = $translator->trans( 'Learn more' );
        $banner->cookieName = "eZDemoPrivacyCookie";
        $banner->cookieValidity = 365;

        return $banner;
    }
}
