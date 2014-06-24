<?php
/**
 * File containing the SearchController class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */

namespace EzSystems\DemoBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\Core\Pagination\Pagerfanta\ContentSearchAdapter;
use EzSystems\DemoBundle\Entity\SimpleSearch;
use EzSystems\DemoBundle\Helper\SearchHelper;
use Pagerfanta\Pagerfanta;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;

class SearchController extends Controller
{
    public function showSearchResultsAction( Request $request)
    {
        $response = new Response();

        //TODO manage caching
        // Setting default cache configuration (you can override it in you siteaccess config)
//        $response->setSharedMaxAge( $this->getConfigResolver()->getParameter( 'content.default_ttl' ) );
        // Make the response location cache aware for the reverse proxy
        //$response->headers->set( 'X-Location-Id', $locationId );
//        $response->setVary( 'X-User-Hash' );

        //TODO edit the header search form so it calls this controller

        $searchText = "";
        $searchCount = 0;

        // Creating a form using Symfony's form component
        $simpleSearch = new SimpleSearch();
        $form = $this->createForm( $this->get( 'ezdemo.form.type.simple_search' ), $simpleSearch );
        $form->handleRequest( $request );

        $pager = null;

        if ( $form->isValid() )
        {
            /** @var SearchHelper $searchHelper */
            $searchHelper = $this->get( 'ezdemo.search_helper' );

            if ( !empty( $simpleSearch->searchText ) )
            {
                $searchText = $simpleSearch->searchText;

                $pager = $searchHelper->searchForPaginatedContent(
                    $searchText,
                    $request->get( 'page', 1 ),
                    $this->getConfigResolver()->getParameter( 'languages' )
                );

                $searchCount = $pager->getNbResults();

                //TODO redirect
            }
        }

        return $this->render(
            'eZDemoBundle:search:search.html.twig',
            array(
                'searchText' => $searchText,
                'searchCount' => $searchCount,
                'pagerSearch' => $pager,
                'form' => $form->createView()
            ),
            $response
        );
    }

}
