<?php
/**
 * This file is part of the eZ Publish Kernel package
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributd with this source code.
 */
namespace EzSystems\DemoBundle\PremiumContent;

use eZ\Publish\API\Repository\Repository;
use eZ\Publish\API\Repository\Values\Content\Location;
use eZ\Publish\API\Repository\Values\User\Role;
use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use eZ\Publish\Core\MVC\Symfony\View\Provider\Location as LocationViewProvider;

/**
 * Returns the premium_content view if it applies to a location and if the user isn't a Premium subscriber.
 */
class PremiumLocationViewProvider implements LocationViewProvider
{
    /**
     * ID of the section used to mark content as Premium
     * @var int
     */
    private $premiumSectionId;

    /** @var PremiumSubscriptionChecker */
    private $subscriptionChecker;

    /**
     * @var Repository
     */
    private $repository;

    public function __construct( Repository $repository, PremiumSubscriptionChecker $subscriptionChecker, $premiumSectionId )
    {
        $this->repository = $repository;
        $this->premiumSectionId = $premiumSectionId;
        $this->subscriptionChecker = $subscriptionChecker;
    }

    public function getView( Location $location, $viewType )
    {
        if ( $viewType !== 'full' )
        {
            return null;
        }

        if ( $location->getContentInfo()->sectionId !== $this->premiumSectionId )
        {
            return null;
        }

        if ( $this->subscriptionChecker->userIsSubscriber( $this->repository->getCurrentUser() ) )
        {
            return null;
        }

        return new ContentView( "eZDemoBundle:$viewType:premium_content.html.twig" );
    }
}
