<?php
/**
 * File containing the CriterionHelper class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Helper;

use eZ\Publish\API\Repository\Repository;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;

/**
 * Helper class for building criteria easily.
 */
class CriteriaHelper
{
    /**
     * Generates an exclude criterion based on contentType identifiers.
     *
     * @param array $excludeContentTypeIdentifiers
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd
     */
    public function generateContentTypeExcludeCriterion( array $excludeContentTypeIdentifiers )
    {
        $excludeCriterion = array();
        foreach ( $excludeContentTypeIdentifiers as $contentTypeIdentifier )
        {
            $excludeCriterion[] = new Criterion\LogicalNot(
                new Criterion\ContentTypeIdentifier( $contentTypeIdentifier )
            );
        }

        return new Criterion\LogicalAnd( $excludeCriterion );
    }

    /**
     * Generates an exclude criterion based on locationIds.
     *
     * @param array $excludeLocationIds
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalNot[]
     */
    public function generateLocationIdExcludeCriterion( array $excludeLocationIds )
    {
        $excludeCriterion = array();
        foreach ( $excludeLocationIds as $locationId )
        {
            $excludeCriterion[] = new Criterion\LogicalNot(
                new Criterion\LocationId( $locationId )
            );
        }

        return new Criterion\LogicalAnd( $excludeCriterion );
    }
}
