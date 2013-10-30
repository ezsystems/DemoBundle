<?php
/**
 * File containing the MenuHelper class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Helper;

use eZ\Publish\API\Repository\Repository;
use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;
use eZ\Publish\API\Repository\Values\Content\Search\SearchResult;

/**
 * Helper for menus
 */
class MenuHelper
{
    /**
     * @var \eZ\Publish\API\Repository\Repository
     */
    private $repository;

    /**
     * Default limit for content list in menus.
     *
     * @var int
     */
    private $defaultMenuLimit;

    public function __construct( Repository $repository, $defaultMenuLimit )
    {
        $this->repository = $repository;
        $this->defaultMenuLimit = $defaultMenuLimit;
    }

    /**
     * Returns Content objects that we want to display in top menu, based on $topLocationId.
     * All content objects are fetched under $topLocationId only (not in the whole tree).
     *
     * One might use $excludeContentTypeIdentifiers to explicitly exclude some content types (e.g. "article").
     *
     * @param int $topLocationId
     * @param \eZ\Publish\API\Repository\Values\Content\Query\Criterion $criterion Additional criterion for filtering.
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Content[] Content objects, indexed by their contentId.
     */
    public function getTopMenuContent( $topLocationId, Criterion $criterion = null )
    {
        $criteria = array(
            new Criterion\ParentLocationId( $topLocationId ),
            new Criterion\Visibility( Criterion\Visibility::VISIBLE )
        );

        if ( !empty( $criterion ) )
            $criteria[] = $criterion;

        $query = new Query(
            array(
                'criterion' => new Criterion\LogicalAnd( $criteria ),
                'sortClauses' => array( new SortClause\LocationPriority( Query::SORT_ASC ) )
            )
        );
        $query->limit = $this->defaultMenuLimit;

        return $this->buildContentListFromSearchResult( $this->repository->getSearchService()->findContent( $query ) );
    }

    /**
     * Returns latest published content that is located under $pathString and matching $contentTypeIdentifier.
     * The whole subtree will be passed through to find content.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $rootLocation Root location we want to start content search from.
     * @param string[] $includeContentTypeIdentifiers Array of ContentType identifiers we want content to match.
     * @param \eZ\Publish\API\Repository\Values\Content\Query\Criterion $criterion Additional criterion for filtering.
     * @param int|null $limit Max number of items to retrieve. If not provided, default limit will be used.
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Content[]
     */
    public function getLatestContent( Location $rootLocation, array $includeContentTypeIdentifiers = array(), Criterion $criterion = null, $limit = null )
    {
        $criteria = array(
            new Criterion\Subtree( $rootLocation->pathString ),
            new Criterion\Visibility( Criterion\Visibility::VISIBLE )
        );

        if ( $includeContentTypeIdentifiers )
            $criteria[] = new Criterion\ContentTypeIdentifier( $includeContentTypeIdentifiers );

        if ( !empty( $criterion ) )
            $criteria[] = $criterion;

        $query = new Query(
            array(
                'criterion' => new Criterion\LogicalAnd( $criteria ),
                'sortClauses' => array( new SortClause\DatePublished( Query::SORT_DESC ) )
            )
        );
        $query->limit = $limit ?: $this->defaultMenuLimit;

        return $this->buildContentListFromSearchResult( $this->repository->getSearchService()->findContent( $query ) );
    }

    /**
     * Builds a Content list from $searchResult.
     * Returned array consists of a hash of Content objects, indexed by their ID.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Search\SearchResult $searchResult
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Content[]
     */
    private function buildContentListFromSearchResult( SearchResult $searchResult )
    {
        $contentList = array();
        foreach ( $searchResult->searchHits as $searchHit )
        {
            $contentList[$searchHit->valueObject->contentInfo->id] = $searchHit->valueObject;
        }

        return $contentList;
    }
}
