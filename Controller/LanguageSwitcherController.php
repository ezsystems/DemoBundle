<?php
namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\Core\MVC\Symfony\Routing\RouteReference;

class LanguageSwitcherController extends Controller
{
    public function languagesAction( RouteReference $routeReference )
    {
        // get a tab with info for existing siteaccess
        $translationHelper = $this->container->get( 'ezpublish.translation_helper' );
        $availableLanguage = $translationHelper->getAvailableLanguages();
        // create an array for corresponding siteaccesses names depending on the lang
        foreach ( $availableLanguage as $lang ) {
            $siteaccess[$lang] = $translationHelper->getTranslationSiteAccess( $lang );
        }

        // get current eZ language
        $currentSFLanguage = $this->getRequest()->get( '_locale' );
        $currentEzLanguage = array_search(
            $currentSFLanguage ,
            $this->container->getParameter( 'ezpublish.locale.conversion_map' )
        );

        return $this->render( 'eZDemoBundle:parts:languages_switcher.html.twig',
            array( 'routeRef' => $routeReference,
                   'siteaccess' => $siteaccess,
                   'currentLanguage' => $currentEzLanguage ) );
    }
}
