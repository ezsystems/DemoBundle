<?php
/**
 * File containing the LanguageSwitcherController class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\Core\MVC\Symfony\Routing\RouteReference;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Exception\MissingMandatoryParametersException;

class LanguageSwitcherController extends Controller
{
    /**
     * @param Request $request
     * @param RouteReference $routeReference
     *
     * Displays the language switcher
     *
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showSwitcherAction(Request $request, RouteReference $routeReference)
    {
        /** @var \eZ\Publish\Core\Helper\TranslationHelper $translationHelper */
        $translationHelper = $this->container->get('ezpublish.translation_helper');
        /** @var \eZ\Publish\Core\MVC\Symfony\Locale\LocaleConverterInterface $localeConverter */
        $localeConverter = $this->container->get('ezpublish.locale.converter');
        // get current eZ language
        $currentEzLanguage = $localeConverter->convertToEz($request->get('_locale'));

        $siteaccess = [];
        $availableLanguages = [];
        $translatedUrls = [];

        // create an array for corresponding siteaccesses names depending on the lang
        foreach ($translationHelper->getAvailableLanguages() as $lang) {
            if ($lang != null) {
                $sa = $translationHelper->getTranslationSiteAccess($lang);
                $routeReference->set('siteaccess', $sa);
                try {
                    $translatedUrls[$lang] = $this->generateUrl($routeReference);
                    $siteaccess[$lang] = $sa;
                    $availableLanguages[] = $lang;
                } catch (MissingMandatoryParametersException $e) {
                    // No version available in this language
                }
            }
        }

        return $this->render(
            'eZDemoBundle:parts:languages_switcher.html.twig',
            array(
                'translatedUrls' => $translatedUrls,
                'siteaccess' => $siteaccess,
                'currentLanguage' => $currentEzLanguage,
                'availableLanguages' => $availableLanguages,
            )
        );
    }
}
