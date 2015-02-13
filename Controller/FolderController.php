<?php
/**
 * This file is part of the ezsystems/demo-bundle package
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Controller;

use eZ\Publish\API\Repository\Values\Content\LocationQuery;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;
use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use eZ\Bundle\EzPublishCoreBundle\Controller;
use Pagerfanta\Pagerfanta;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\Request;

class FolderController extends Controller
{
    /**
     * Displays the sub folder if it exists
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location of a folder
     * @throws NotFoundHttpException $location is flagged as invisible
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showFolderListAsideViewAction( Location $location, $viewType, $layout = false, array $params = array() )
    {
        if ( $location->invisible )
        {
            throw new NotFoundHttpException( "Location #$location->id cannot be displayed as it is flagged as invisible." );
        }

        $languages = $this->getConfigResolver()->getParameter( 'languages' );

        $includedContentTypeIdentifiers = $this->container->getParameter( 'ezdemo.folder.folder_tree.included_content_types' );

        $subContentCriteria = $this->get( 'ezdemo.criteria_helper' )->generateSubContentCriterion(
            $location, $includedContentTypeIdentifiers, $languages
        );

        $subContentQuery = new LocationQuery();
        $subContentQuery->criterion = $subContentCriteria;
        $subContentQuery->sortClauses = array(
            new SortClause\ContentName()
        );
        $subContentQuery->performCount = false;

        $searchService = $this->getRepository()->getSearchService();
        $subContent = $searchService->findLocations( $subContentQuery );

        $treeChildItems = array();
        foreach ( $subContent->searchHits as $hit )
        {
            $treeChildItems[] = $hit->valueObject;
        }

        return $this->get( 'ez_content' )->viewLocation(
            $location->id,
            $viewType,
            $layout,
            array( 'treeChildItems' => $treeChildItems ) + $params
        );
    }

    /**
     * Displays the list of article
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location of a folder
     * @param \Symfony\Component\HttpFoundation\Request $request request object
     * @throws NotFoundHttpException $location is flagged as invisible
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showFolderListAction( Request $request, Location $location, $viewType, $layout = false, array $params = array() )
    {
        if ( $location->invisible )
        {
            throw new NotFoundHttpException( "Location #$location->id cannot be displayed as it is flagged as invisible." );
        }

        $content = $this->getRepository()
            ->getContentService()
            ->loadContentByContentInfo( $location->getContentInfo() );

        // Getting language for the current siteaccess
        $languages = $this->getConfigResolver()->getParameter( 'languages' );

        $excludedContentTypes = $this->container->getParameter( 'ezdemo.folder.folder_view.excluded_content_types' );

        // Using the criteria helper (a demobundle custom service) to generate our query's criteria.
        // This is a good practice in order to have less code in your controller.
        $criteria = $this->get( 'ezdemo.criteria_helper' )->generateListFolderCriterion(
            $location, $excludedContentTypes, $languages
        );

        // Generating query
        $query = new LocationQuery();
        $query->criterion = $criteria;
        $query->sortClauses = array(
            new SortClause\DatePublished()
        );

        // Initialize pagination.
        $pager = new Pagerfanta(
            new ContentSearchAdapter( $query, $this->getRepository()->getSearchService() )
        );

        $pager->setMaxPerPage( $this->container->getParameter( 'ezdemo.folder.folder_list.limit' ) );
        $pager->setCurrentPage( $request->get( 'page', 1 ) );

        $includedContentTypeIdentifiers = $this->container->getParameter( 'ezdemo.folder.folder_tree.included_content_types' );

        // Get sub folder structure
        $subContentCriteria = $this->get( 'ezdemo.criteria_helper' )->generateSubContentCriterion(
            $location, $includedContentTypeIdentifiers, $languages
        );

        $subContentQuery = new LocationQuery();
        $subContentQuery->criterion = $subContentCriteria;
        $subContentQuery->sortClauses = array(
            new SortClause\ContentName()
        );

        $searchService = $this->getRepository()->getSearchService();
        $subContent = $searchService->findLocations( $subContentQuery );

        $treeItems = array();
        foreach ( $subContent->searchHits as $hit )
        {
            $treeItems[] = $hit->valueObject;
        }

        return $this->get( 'ez_content' )->viewLocation(
            $location->id,
            $viewType,
            $layout,
            array( 'pagerFolder' => $pager, 'treeItems' => $treeItems ) + $params
        );
    }
}
