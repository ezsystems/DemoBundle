<?php
/**
 * File containing the Feedback class.
 *
 * @copyright Copyright (C) 1999-2014 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
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
