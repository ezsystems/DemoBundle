<?php
/**
 * File containing the FeedbackType class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class FeedbackType extends AbstractType
{
    public function buildForm( FormBuilderInterface $builder, array $options )
    {
        $builder
            ->add( 'firstName', 'text' )
            ->add( 'lastName', 'text' )
            ->add( 'email', 'email' )
            ->add( 'subject', 'text' )
            ->add( 'country', 'country' )
            ->add( 'message', 'textarea' )
            ->add( 'save', 'submit' );
    }

    public function getName()
    {
        return 'ezdemo_feedback';
    }

    public function setDefaultOptions( OptionsResolverInterface $resolver )
    {
        $resolver->setDefaults( array( 'data_class' => 'EzSystems\DemoBundle\Entity\Feedback' ) );
    }
}
