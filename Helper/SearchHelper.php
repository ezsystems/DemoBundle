<?php
/**
 * File containing the SearchHelper class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Helper;

use eZ\Publish\API\Repository\Values\Content\Search\SearchResult;
use eZ\Publish\API\Repository\SearchService;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use Pagerfanta\Pagerfanta;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;

/**
 * Helper for searches.
 */
class SearchHelper
{
    /**
     * @var \eZ\Publish\API\Repository\SearchService
     */
    private $searchService;

    /**
     * @var int
     */
    private $searchListLimit;

    public function __construct(SearchService $searchService, $searchListLimit)
    {
        $this->searchService = $searchService;
        $this->searchListLimit = $searchListLimit;
    }

    /**
     * Search for content for a given $searchText and returns a pager.
     *
     * @param string $searchText to be looked up
     * @param int $currentPage to be displayed
     * @param array $languages to include in the search
     *
     * @return \Pagerfanta\Pagerfanta
     */
    public function searchForPaginatedContent($searchText, $currentPage, $languages)
    {
        // Generating query
        $query = new Query();
        $query->query = new Criterion\FullText($searchText);
        $query->filter = new Criterion\LogicalAnd(
            array(
                new Criterion\Visibility(Criterion\Visibility::VISIBLE),
                new Criterion\LanguageCode($languages, true),
            )
        );

        // Initialize pagination.
        $pager = new Pagerfanta(
            new ContentSearchAdapter($query, $this->searchService)
        );
        $pager->setMaxPerPage($this->searchListLimit);
        $pager->setCurrentPage($currentPage);

        return $pager;
    }

    /**
     * Builds a list from $searchResult.
     * Returned array consists of a hash of objects, indexed by their ID.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Search\SearchResult $searchResult
     *
     * @return array
     */
    public function buildListFromSearchResult(SearchResult $searchResult)
    {
        $list = array();
        foreach ($searchResult->searchHits as $searchHit) {
            $list[$searchHit->valueObject->id] = $searchHit->valueObject;
        }

        return $list;
    }
}
