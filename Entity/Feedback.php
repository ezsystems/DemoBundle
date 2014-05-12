<?php
/**
 * File containing the Feedback class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class Feedback
{
    /**
     * @Assert\NotBlank()
     * @Assert\Length( min = 1, max = 255, maxMessage = "feedback.max_size.255" )
     */
    public $firstName;

    /**
     * @Assert\NotBlank()
     * @Assert\Length( min = 1, max = 255, maxMessage = "feedback.max_size.255" )
     */
    public $lastName;

    /**
     * @Assert\NotBlank()
     * @Assert\Length( min = 1, max = 255, maxMessage = "feedback.max_size.255" )
     * @Assert\Email
     */
    public $email;

    /**
     * @Assert\NotBlank()
     * @Assert\Length( min = 1, max = 255, maxMessage = "feedback.max_size.255" )
     */
    public $subject;

    /**
     * @Assert\NotBlank()
     * @Assert\Length( min = 1, max = 255, maxMessage = "feedback.max_size.255" )
     */
    public $country;

    /**
     * @Assert\NotBlank()
     * @Assert\Length( min = 1, max = 2000, maxMessage = "feedback.max_size.2000" )
     */
    public $message;

}
