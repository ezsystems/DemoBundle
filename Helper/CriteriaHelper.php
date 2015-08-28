<?php
/**
 * File containing the CriterionHelper class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Helper;

use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\Core\Base\Exceptions\InvalidArgumentType;
use DateTime;
use DateInterval;

/**
 * Helper class for building criteria easily.
 */
class CriteriaHelper
{
    /**
     * Generate criterion list to be used to list article.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location Location of the folder
     * @param string[] $excludeContentTypeIdentifiers Array of excluded contentType identifiers
     * @param string[] $languages Array of languages
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion
     */
    public function generateListFolderCriterion(Location $location, array $excludeContentTypeIdentifiers = array(), array $languages = array())
    {
        $criteria = array();
        $criteria[] = new Criterion\Visibility(Criterion\Visibility::VISIBLE);
        $criteria[] = new Criterion\ParentLocationId($location->id);
        $criteria[] = new Criterion\LogicalNot(new Criterion\ContentTypeIdentifier($excludeContentTypeIdentifiers));
        $criteria[] = new Criterion\LanguageCode($languages);

        return new Criterion\LogicalAnd($criteria);
    }

    /**
     * Generate criterion list to be used to list sub folder items.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location Location of the folder
     * @param string[] $includedContentTypeIdentifiers Array of included contentType identifiers
     * @param string[] $languages Array of languages
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion
     */
    public function generateSubContentCriterion(Location $location, array $includedContentTypeIdentifiers = array(), array $languages = array())
    {
        $criteria = array();
        $criteria[] = new Criterion\Visibility(Criterion\Visibility::VISIBLE);
        $criteria[] = new Criterion\ContentTypeIdentifier($includedContentTypeIdentifiers);
        $criteria[] = new Criterion\LanguageCode($languages);
        $criteria[] = new Criterion\ParentLocationId($location->id);

        return new Criterion\LogicalAnd($criteria);
    }

    /**
     * Generates an exclude criterion based on contentType identifiers.
     *
     * @param array $excludeContentTypeIdentifiers
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalAnd
     */
    public function generateContentTypeExcludeCriterion(array $excludeContentTypeIdentifiers)
    {
        $excludeCriterion = array();
        foreach ($excludeContentTypeIdentifiers as $contentTypeIdentifier) {
            $excludeCriterion[] = new Criterion\LogicalNot(
                new Criterion\ContentTypeIdentifier($contentTypeIdentifier)
            );
        }

        return new Criterion\LogicalAnd($excludeCriterion);
    }

    /**
     * Generates an exclude criterion based on locationIds.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location[] $excludeLocations
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion\LogicalNot[]
     *
     * @throws \eZ\Publish\Core\Base\Exceptions\InvalidArgumentType
     */
    public function generateLocationIdExcludeCriterion(array $excludeLocations)
    {
        $excludeCriterion = array();
        foreach ($excludeLocations as $location) {
            if (!$location instanceof Location) {
                throw new InvalidArgumentType('excludeLocations', 'array of Location objects');
            }

            $excludeCriterion[] = new Criterion\LogicalNot(
                new Criterion\LocationId($location->id)
            );
        }

        return new Criterion\LogicalAnd($excludeCriterion);
    }

    /**
     * Generate criterion list to be used to list blog_posts.
     *
     * @param \eZ\Publish\API\Repository\Values\Content\Location $location Location of the blog
     * @param array $viewParameters: View parameters of the blog view
     * @param string[] $languages Array of languages
     *
     * @return \eZ\Publish\API\Repository\Values\Content\Query\Criterion
     */
    public function generateListBlogPostCriterion(Location $location, array $viewParameters, array $languages = array())
    {
        $criteria = array();
        $criteria[] = new Criterion\Visibility(Criterion\Visibility::VISIBLE);
        $criteria[] = new Criterion\Subtree($location->pathString);
        $criteria[] = new Criterion\ContentTypeIdentifier(array('blog_post'));
        $criteria[] = new Criterion\LanguageCode($languages);

        if (!empty($viewParameters)) {
            if (!empty($viewParameters['month']) && !empty($viewParameters['year'])) {
                // Generating the criterion for the given month/year
                $month = (int)$viewParameters['month'];
                $year = (int)$viewParameters['year'];

                $date = new DateTime("$year-$month-01");
                $date->setTime(00, 00, 00);

                $criteria[] = new Criterion\DateMetadata(
                    Criterion\DateMetadata::CREATED,
                    Criterion\Operator::BETWEEN,
                    array(
                        $date->getTimestamp(),
                        $date->add(new DateInterval('P1M'))->getTimestamp(),
                    )
                );
            }
        }

        return new Criterion\LogicalAnd($criteria);
    }
}
