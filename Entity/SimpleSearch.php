<?php
/**
 * File containing the SimpleSearch class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class SimpleSearch
{
    /**
     * @Assert\Length( min = 0, max = 2000, maxMessage = "search.simple.max_size.2000" )
     */
    public $searchText;
}
