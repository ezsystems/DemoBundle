<?php
/**
 * File containing the SimpleSearchType class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class SimpleSearchType extends AbstractType
{
    public function buildForm( FormBuilderInterface $builder, array $options )
    {
        $builder
            ->setMethod( 'GET' )
            ->add( 'searchText', 'search' )
            ->add( 'save', 'submit' );
    }

    public function getName()
    {
        return 'ezdemo_simple_search';
    }

    public function configureOptions( OptionsResolver $resolver )
    {
        $resolver->setDefaults( array( 'data_class' => 'EzSystems\DemoBundle\Entity\SimpleSearch' ) );
    }
}
