<?php
/**
 * File containing the FeedbackController class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use EzSystems\DemoBundle\Entity\Feedback;
use EzSystems\DemoBundle\Helper\EmailHelper;

class FeedbackFormController extends Controller
{
    /**
     * Displays and manages the feedback form.
     *
     * The signature of this method follows the one from the default view controller.
     * @param $locationId
     * @param $viewType
     * @param bool $layout
     * @param array $params
     *
     * @return mixed
     */
    public function showFeedbackFormAction( $locationId, $viewType, $layout = false, array $params = array() )
    {
        // Creating a form using Symfony's form component
        $feedback = new Feedback();
        $form = $this->createForm( $this->get( 'ezdemo.form.type.feedback' ), $feedback );
        $request = $this->getRequest();

        if ( $request->isMethod( 'POST' ) )
        {
            $form->handleRequest( $request );

            if ( $form->isValid() )
            {
                /** @var EmailHelper $emailHelper */
                $emailHelper = $this->get( 'ezdemo.email_helper' );
                $emailHelper->sendFeebackMessage(
                    $feedback,
                    $this->container->getParameter( 'ezdemo.feedback_form.email_from' ),
                    $this->container->getParameter( 'ezdemo.feedback_form.email_to' )
                );

                // Adding the confirmation flash message to the session
                $this->get( 'session' )->getFlashBag()->add(
                    'notice',
                    $this->get( 'translator' )->trans( 'Thank you for your message, we will get back to you as soon as possible.' )
                );

                $this->redirect(
                    $this->generateUrl(
                        $this->getRepository()->getLocationService()->loadLocation( $locationId )
                    )
                );
            }
        }

        return $this->get( 'ez_content' )->viewLocation(
            $locationId,
            $viewType,
            $layout,
            array( 'form' => $form->createView() )
        );
    }
}
