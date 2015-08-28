<?php
/**
 * This file is part of the DemoBundle package.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributd with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Controller;

use Symfony\Component\HttpFoundation\Response;
use eZ\Bundle\EzPublishCoreBundle\Controller;

class MenuController extends Controller
{
    /**
     * @param mixed|null $currentLocationId
     * @return Response
     */
    public function topMenuAction($currentLocationId)
    {
        if ($currentLocationId !== null) {
            $location = $this->getLocationService()->loadLocation($currentLocationId);
            if (isset($location->path[2])) {
                $secondLevelLocationId = $location->path[2];
            }
        }

        $response = new Response();

        $menu = $this->getMenu('top');
        $parameters = array('menu' => $menu);
        if (isset($secondLevelLocationId) && isset($menu[$secondLevelLocationId])) {
            $parameters['submenu'] = $menu[$secondLevelLocationId];
        }

        return $this->render('eZDemoBundle::page_topmenu.html.twig', $parameters, $response);
    }

    /**
     * @param string $identifier
     * @return \Knp\Menu\MenuItem
     */
    private function getMenu($identifier)
    {
        return $this->container->get("ezdemo.menu.$identifier");
    }

    /**
     * @return \eZ\Publish\API\Repository\LocationService
     */
    private function getLocationService()
    {
        return $this->container->get('ezpublish.api.service.location');
    }
}
