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
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;

/**
 * Helper for menus
 */
class MenuHelper
{
    /**
     * @var \eZ\Publish\API\Repository\Repository
     */
    private $repository;

    public function __construct( Repository $repository )
    {
        $this->repository = $repository;
    }

    /**
     * Returns Content objects that we want to display in top menu, based on $topLocationId.
     * All content objects are fetched under $topLocationId only (not in the whole tree).
     *
     * One might use $excludeContentTypeIdentifiers to explicitly exclude some content types (e.g. "article").
     *
     * @param int $topLocationId
     * @param array $excludeContentTypeIdentifiers ContentType identifiers we don't want to appear in the menu.
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Content[]
     */
    public function getTopMenuContent( $topLocationId, array $excludeContentTypeIdentifiers = array() )
    {
        $criteria = array(
            new Criterion\ParentLocationId( $topLocationId ),
            new Criterion\Visibility( Criterion\Visibility::VISIBLE )
        );

        $excludeCriterion = $this->generateContentTypeExcludeCriterion( $excludeContentTypeIdentifiers );
        if ( !empty( $excludeCriterion ) )
            $criteria[] = new Criterion\LogicalAnd( $excludeCriterion );

        $query = new Query(
            array(
                'criterion' => new Criterion\LogicalAnd( $criteria ),
                'sortClauses' => array( new SortClause\DatePublished( Query::SORT_DESC ) )
            )
        );

        $contentList = array();
        $searchResult = $this->repository->getSearchService()->findContent( $query );
        foreach ( $searchResult->searchHits as $searchHit )
        {
            $contentList[$searchHit->valueObject->contentInfo->id] = $searchHit->valueObject;
        }

        return $contentList;
    }

    /**
     * Generates an exclude criterion based on contentType identifiers.
     *
     * @param array $excludeContentTypeIdentifiers
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalNot[]
     */
    private function generateContentTypeExcludeCriterion( array $excludeContentTypeIdentifiers )
    {
        $excludeCriterion = array();
        if ( !empty( $excludeContentTypeIdentifiers ) )
        {
            foreach ( $excludeContentTypeIdentifiers as $contentTypeIdentifier )
            {
                $contentType = $this->repository->getContentTypeService()->loadContentTypeByIdentifier( $contentTypeIdentifier );
                $excludeCriterion[] = new Criterion\LogicalNot(
                    new Criterion\ContentTypeId( $contentType->id )
                );
            }
        }

        return $excludeCriterion;
    }
}
