<?php
/**
 * This file is part of the ezsystems/demo-bundle package.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Controller;

use eZ\Publish\API\Repository\Values\Content\LocationQuery;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;
use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use eZ\Bundle\EzPublishCoreBundle\Controller;
use Pagerfanta\Pagerfanta;
use Symfony\Component\HttpFoundation\Request;

class FolderController extends Controller
{
    /**
     * Displays the sub folder if it exists.
     *
     * @param \eZ\Publish\Core\MVC\Symfony\View\ContentView $view
     *
     * @return \Symfony\Component\HttpFoundation\Response $location is flagged as invisible
     */
    public function showFolderListAsideViewAction(ContentView $view)
    {
        $subContentCriteria = $this->get('ezdemo.criteria_helper')->generateSubContentCriterion(
            $view->getLocation(),
            $this->container->getParameter('ezdemo.folder.folder_tree.included_content_types'),
            $this->getConfigResolver()->getParameter('languages')
        );

        $subContentQuery = new LocationQuery();
        $subContentQuery->query = $subContentCriteria;
        $subContentQuery->sortClauses = array(
            new SortClause\ContentName(),
        );
        $subContentQuery->performCount = false;

        $searchService = $this->getRepository()->getSearchService();
        $subContent = $searchService->findLocations($subContentQuery);

        $treeChildItems = array();
        foreach ($subContent->searchHits as $hit) {
            $treeChildItems[] = $hit->valueObject;
        }

        $view->addParameters(['treeChildItems' => $treeChildItems]);

        return $view;
    }

    /**
     * Displays the list of article.
     *
     * @param \Symfony\Component\HttpFoundation\Request $request request object
     * @param \eZ\Publish\Core\MVC\Symfony\View\ContentView $view
     *
     * @return \Symfony\Component\HttpFoundation\Response $location is flagged as invisible
     */
    public function showFolderListAction(Request $request, ContentView $view)
    {
        $languages = $this->getConfigResolver()->getParameter('languages');

        // Using the criteria helper (a demobundle custom service) to generate our query's criteria.
        // This is a good practice in order to have less code in your controller.
        $criteria = $this->get('ezdemo.criteria_helper')->generateListFolderCriterion(
            $view->getLocation(),
            $this->container->getParameter('ezdemo.folder.folder_view.excluded_content_types'),
            $languages
        );

        // Generating query
        $query = new LocationQuery();
        $query->query = $criteria;
        $query->sortClauses = array(
            new SortClause\DatePublished(),
        );

        // Initialize pagination.
        $pager = new Pagerfanta(
            new ContentSearchAdapter($query, $this->getRepository()->getSearchService())
        );

        $pager->setMaxPerPage($this->container->getParameter('ezdemo.folder.folder_list.limit'));
        $pager->setCurrentPage($request->get('page', 1));

        $includedContentTypeIdentifiers = $this->container->getParameter('ezdemo.folder.folder_tree.included_content_types');

        // Get sub folder structure
        $subContentCriteria = $this->get('ezdemo.criteria_helper')->generateSubContentCriterion(
            $view->getLocation(), $includedContentTypeIdentifiers, $languages
        );

        $subContentQuery = new LocationQuery();
        $subContentQuery->query = $subContentCriteria;
        $subContentQuery->sortClauses = array(
            new SortClause\ContentName(),
        );

        $searchService = $this->getRepository()->getSearchService();
        $subContent = $searchService->findLocations($subContentQuery);

        $treeItems = array();
        foreach ($subContent->searchHits as $hit) {
            $treeItems[] = $hit->valueObject;
        }

        $view->addParameters(['pagerFolder' => $pager, 'treeItems' => $treeItems]);

        return $view;
    }
}
