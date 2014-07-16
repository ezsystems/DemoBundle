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
use Knp\Menu\FactoryInterface;
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

    public function createMainMenu( Request $request )
    {
        $menu = $this->factory->createItem( 'root' );
        $menu->setChildrenAttribute( 'class', 'nav' );
        foreach ( $this->searchService->findLocations( $this->buildQuery() )->searchHits as $searchHit )
        {
            /** @var Location $location */
            $location = $searchHit->valueObject;
            $menu->addChild(
                $location->contentInfo->name,
                array(
                    'uri' => $this->router->generate( $location ),
                    'attributes' => array( 'id' => 'nav-location-' . $location->id )
                )
            );
        }

        return $menu;
    }

    /**
     * Builds the menu items search query
     * @return Query
     */
    private function buildQuery()
    {
        $query = new LocationQuery();

        $query->query = new Criterion\LogicalAnd(
            array(
                new Criterion\ContentTypeIdentifier( array( 'folder', 'landing_page' ) ),
                new Criterion\Visibility( Criterion\Visibility::VISIBLE ),
                new Criterion\Location\Depth( Criterion\Operator::EQ, 2 ),
                new Criterion\ParentLocationId( 2 )
            )
        );

        return $query;
    }
}
