<?php
/**
 * This file is part of the eZ Publish Legacy package
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributd with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Menu;

use Knp\Menu\NodeInterface;

class Tree implements NodeInterface
{

    /**
     * Get the name of the node
     *
     * Each child of a node must have a unique name
     *
     * @return string
     */
    function getName()
    {
        // TODO: Implement getName() method.
    }

    /**
     * Get the options for the factory to create the item for this node
     *
     * @return array
     */
    function getOptions()
    {
        // TODO: Implement getOptions() method.
    }

    /**
     * Get the child nodes implementing NodeInterface
     *
     * @return \Traversable
     */
    function getChildren()
    {
        // TODO: Implement getChildren() method.
    }
}
