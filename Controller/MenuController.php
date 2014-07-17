<?php
/**
 * This file is part of the DemoBundle package
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributd with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use eZ\Bundle\EzPublishCoreBundle\Controller;

class MenuController extends Controller
{
    /**
     * @param mixed|null $currentLocationId
     * @return Response
     */
    public function topMenuAction( $currentLocationId )
    {
        $response = new Response;

        $menu = $this->getMenu( 'top' );
        $parameters = array( 'menu' => $menu );
        if ( isset( $menu[$currentLocationId] ) )
        {
            $parameters['submenu'] = $menu[$currentLocationId];
        }

        return $this->render( 'eZDemoBundle::page_topmenu.html.twig', $parameters, $response );
    }

    /**
     * @param string  $identifier
     * @return \Knp\Menu\MenuItem
     */
    private function getMenu( $identifier )
    {
        return $this->container->get( "ezdemo.menu.$identifier" );
    }
}
