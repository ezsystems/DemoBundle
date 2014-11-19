<?php
/**
 * This file is part of the eZ Publish Kernel package
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributd with this source code.
 */
namespace EzSystems\DemoBundle\PremiumContent;

use eZ\Publish\API\Repository\Values\User\User;
use eZ\Publish\API\Repository\Repository;
use eZ\Publish\API\Repository\Values\User\Role;

class PremiumSubscriptionChecker
{
    /**
     * ID of the premium subscriber role
     */
    private $roleId = 6;

    /**
     * @var Repository|\eZ\Publish\Core\Repository\Repository
     */
    private $repository;

    public function __construct( Repository $repository, $subscriberRoleId )
    {
        $this->repository = $repository;
        $this->roleId = $subscriberRoleId;
    }

    public function userIsSubscriber( User $user )
    {
        $roleService = $this->repository->getRoleService();
        return $this->repository->sudo(
            function ( Repository $repository ) use ( $user, $roleService )
            {
                foreach ( $repository->getUserService()->loadUserGroupsOfUser( $user ) as $group )
                {
                    foreach ( $roleService->getRoleAssignmentsForUserGroup( $group ) as $role )
                    {
                        if ( $this->isSubscriberRole( $role->role ) )
                        {
                            return true;
                        }
                    }
                }
                return false;
            }
        );
    }

    public function isSubscriberRole( Role $role )
    {
        return $role->id === $this->roleId;
    }
}
