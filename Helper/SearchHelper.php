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

/**
 * Helper for searches
 */
class SearchHelper
{
    /**
     * Builds a list from $searchResult.
     * Returned array consists of a hash of objects, indexed by their ID.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Search\SearchResult $searchResult
     *
     * @return array
     */
    public function buildListFromSearchResult( SearchResult $searchResult )
    {
        $list = array();
        foreach ( $searchResult->searchHits as $searchHit )
        {
            $list[$searchHit->valueObject->id] = $searchHit->valueObject;
        }

        return $list;
    }
}
