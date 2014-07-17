<?php
/**
 * This file is part of the eZ Publish Legacy package
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributd with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Menu;

use eZ\Publish\API\Repository\LocationService;
use eZ\Publish\Core\MVC\ConfigResolverInterface;
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

/**
 * A simple eZ Publish menu provider.
 * Generates a two level menu, starting from the configured root note,
 * including all content but ezdemo.top_menu.content_types_exclude.
 */
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

    /** @var ConfigResolverInterface */
    private $configResolver;

    /**
     * @var LocationService
     */
    private $locationService;

    public function __construct(
        FactoryInterface $factory,
        SearchService $searchService,
        RouterInterface $router,
        ConfigResolverInterface $configResolver,
        LocationService $locationService
    )
    {
        $this->factory = $factory;
        $this->searchService = $searchService;
        $this->router = $router;
        $this->configResolver = $configResolver;
        $this->locationService = $locationService;
    }

    public function createTopMenu( Request $request )
    {
        $menu = $this->factory->createItem( 'root' );
        $this->addLocationsToMenu(
            $menu,
            $this->getSearchResults(
                $this->configResolver->getParameter( 'content.tree_root.location_id' )
            )
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
            $menuItem->setChildrenAttribute( 'class', 'nav' );
        }
    }

    /**
     * Builds the menu items search query
     * @return array
     */
    private function getSearchResults( $rootLocationId )
    {
        $rootLocation = $this->locationService->loadLocation( $rootLocationId );

        $query = new LocationQuery();

        $query->query = new Criterion\LogicalAnd(
            array(
                new Criterion\ContentTypeIdentifier( $this->getTopMenuContentTypeIdentifierList() ),
                new Criterion\Visibility( Criterion\Visibility::VISIBLE ),
                new Criterion\Location\Depth(
                    Criterion\Operator::BETWEEN,
                    array( $rootLocation->depth + 1, $rootLocation->depth + 2 )
                ),
                new Criterion\Subtree( $rootLocation->pathString )
            )
        );
        $query->sortClauses = array( new Query\SortClause\Location\Path() );

        return $this->searchService->findLocations( $query )->searchHits;
    }

    private function getTopMenuContentTypeIdentifierList()
    {
        return $this->configResolver->getParameter( 'MenuContentSettings.TopIdentifierList', 'menu' );
    }
}
