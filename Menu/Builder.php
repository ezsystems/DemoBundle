<?php
/**
 * This file is part of the eZ Publish Legacy package
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributd with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Menu;

use eZ\Publish\API\Repository\SearchService;
use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\API\Repository\Values\Content\LocationQuery;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\API\Repository\Values\Content\Search\SearchHit;
use Knp\Menu\FactoryInterface;
use Knp\Menu\ItemInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\RouterInterface;

class Builder
{
    /**
     * @var FactoryInterface
     */
    private $factory;

    /**
     * @var SearchService
     */
    private $searchService;

    /**
     * @var RouterInterface
     */
    private $router;

    public function __construct( FactoryInterface $factory, SearchService $searchService, RouterInterface $router )
    {
        $this->factory = $factory;
        $this->searchService = $searchService;
        $this->router = $router;
    }

    public function createTopMenu( Request $request )
    {
        $menu = $this->factory->createItem( 'root' );
        $menu->setChildrenAttribute( 'class', 'nav' );

        $this->addLocationsToMenu( $menu, $this->getSearchResults( 2, 2 ) );

        return $menu;
    }

    public function createTopSubMenu( Request $request )
    {
        $menu = $this->factory->createItem( 'root' );

        if ( !$request->attributes->has( 'locationId' ) )
        {
            return $menu;
        }

        $menu->setChildrenAttribute( 'class', 'nav' );

        $this->addLocationsToMenu(
            $menu,
            $this->getSearchResults( $request->attributes->get( 'locationId' ), 3 )
        );

        return $menu;
    }

    /**
     * @param ItemInterface $menu
     * @param SearchHit[] $searchHits
     * @return void
     */
    private function addLocationsToMenu( ItemInterface $menu, array $searchHits )
    {
        foreach ( $searchHits as $searchHit )
        {
            /** @var Location $location */
            $location = $searchHit->valueObject;
            $menuItem = isset( $menu[$location->parentLocationId] ) ? $menu[$location->parentLocationId] : $menu;
            $menuItem->addChild(
                $location->id,
                array(
                    'label' => $location->contentInfo->name,
                    'uri' => $this->router->generate( $location ),
                    'attributes' => array( 'id' => 'nav-location-' . $location->id )
                )
            );
            $menuItem[$location->id]->setChildrenAttribute( 'class', 'nav' );
        }
    }

    /**
     * Builds the menu items search query
     * @return array
     */
    private function getSearchResults( $locationId, $depth )
    {
        $query = new LocationQuery();

        $query->query = new Criterion\LogicalAnd(
            array(
                new Criterion\ContentTypeIdentifier( array( 'folder', 'landing_page' ) ),
                new Criterion\Visibility( Criterion\Visibility::VISIBLE ),
                new Criterion\Location\Depth( Criterion\Operator::EQ, $depth ),
                new Criterion\ParentLocationId( $locationId )
            )
        );
        $query->sortClauses = array( new Query\SortClause\ContentName() );

        return $this->searchService->findLocations( $query )->searchHits;
    }
}
