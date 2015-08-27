<?php
/**
 * File containing the EmailHelper class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Helper;

use EzSystems\DemoBundle\Entity\Feedback;
use Swift_Mailer;
use Swift_Message;
use Symfony\Component\Templating\EngineInterface;
use Symfony\Component\Translation\TranslatorInterface;

/**
 * Helper for emails.
 *
 * This class is meant to fulfill email related needs of the DemoBundle.
 *
 * For example, it contains a method that sends by email the content of a Feedback form.
 */
class EmailHelper
{
    /**
     * @var \Symfony\Component\Translation\TranslatorInterface
     */
    private $translator;

    /**
     * @var \Symfony\Component\Templating\EngineInterface
     */
    private $templating;

    /**
     * @var \Swift_Mailer
     */
    private $mailer;

    public function __construct(
        TranslatorInterface $translator,
        EngineInterface $templating,
        Swift_Mailer $mailer
    ) {
        $this->translator = $translator;
        $this->templating = $templating;
        $this->mailer = $mailer;
    }

    /**
     * Sends an email based on a feedback form.
     *
     * @param \EzSystems\DemoBundle\Entity\Feedback $feedback
     * @param string $feedbackEmailFrom  Email address sending feedback form
     * @param string $feedbackEmailTo Email address feedback forms will be sent to
     */
    public function sendFeebackMessage(Feedback $feedback, $feedbackEmailFrom, $feedbackEmailTo)
    {
        $message = Swift_Message::newInstance();

        $message->setSubject($this->translator->trans('eZ Demobundle Feedback form'))
            ->setFrom($feedbackEmailFrom)
            ->setTo($feedbackEmailTo)
            ->setBody(
                // Using template engine to generate the message based on a template
                $this->templating->render(
                    'eZDemoBundle:email:feedback_form.txt.twig',
                    array(
                        'firstname' => $feedback->firstName,
                        'lastname' => $feedback->lastName,
                        'email' => $feedback->email,
                        'subject' => $feedback->subject,
                        'country' => $feedback->country,
                        'message' => $feedback->message,
                    )
                )
            );

        $this->mailer->send($message);
    }
}
