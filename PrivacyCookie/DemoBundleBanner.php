<?php
/**
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */

namespace EzSystems\DemoBundle\PrivacyCookie;

use eZ\Publish\API\Repository\LocationService;
use eZ\Publish\API\Repository\ContentService;
use eZ\Publish\API\Repository\URLAliasService;
use EzSystems\PrivacyCookieBundle\Banner\Banner;
use EzSystems\DemoBundle\PrivacyCookie;
use Symfony\Component\Translation\Translator;

/**
 * Builds a Privacy Cookie Banner object based on a configured Content Object.
 */
class DemoBundleBanner implements DemoBundleBannerFactory
{
    public static function build( array $bannerOptions, LocationService $locationService, ContentService $contentService, URLAliasService $urlAliasService, Translator $translator )
    {
        $contentId = null;

        // check if `Content` object path exists and if so, get associated `contentId`
        if ( !empty( $bannerOptions[ 'pathString' ] ) )
        {
            try
            {
                $alias = $urlAliasService->lookup( $bannerOptions['pathString'] );
                $contentId = $locationService->loadLocation( $alias->destination )->contentId;
            }
            catch ( \Exception $e )
            {
            }
        }

        $content = null;

        // check if `contentId` exists and if so, get associated `Content` object
        if ( $contentId )
        {
            try
            {
                $content = $contentService->loadContent( $contentId );
            }
            catch ( \Exception $e )
            {
            }
        }

        $banner = new Banner();

        if ( $content )
        {
            // fill `Banner` object using `Content` data
            $banner->caption = $content->getFieldValue( 'intro' )->xml->textContent;
            $banner->policyPageUrl = $urlAliasService->reverseLookup(
                $locationService->loadLocation( $content->contentInfo->mainLocationId )
            )->path;
        }
        else
        {
            // fill `Banner` object using defaults
            $banner->caption = $bannerOptions[ 'bannerCaption' ];
            $banner->policyPageUrl = $bannerOptions[ 'learnMoreUrl' ];
        }

        $banner->learnMoreText = $translator->trans( $bannerOptions[ 'learnMoreText' ] );
        $banner->cookieName = $bannerOptions[ 'cookieName' ];
        $banner->cookieValidity = $bannerOptions[ 'validityDays' ];

        return $banner;
    }
}
