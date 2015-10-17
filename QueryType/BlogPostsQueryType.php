<?php
/**
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 */
namespace EzSystems\DemoBundle\QueryType;

use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\Core\QueryType\OptionsResolverBasedQueryType;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\Core\QueryType\QueryType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;

/**
 * A QueryType that lists the blog_post within a blog_post Location.
 */
class BlogPostsQueryType extends OptionsResolverBasedQueryType implements QueryType
{
    /**
     * @var array
     */
    private $languages;

    /**
     * @param array $languages List of languages blog posts must be searched in.
     */
    public function __construct(array $languages = [])
    {
        $this->languages = $languages;
    }

    public static function getName()
    {
        return 'DemoBundle:BlogPosts';
    }

    protected function configureOptions(OptionsResolver $optionsResolver)
    {
        $optionsResolver->setRequired('blogPathString');
    }

    protected function doGetQuery(array $parameters)
    {
        $languages = ['eng-GB'];

        $criteria = [];
        $criteria[] = new Criterion\Subtree($parameters['blogPathString']);
        $criteria[] = new Criterion\ContentTypeIdentifier(array('blog_post'));
        $criteria[] = new Criterion\LanguageCode($languages);

        $query = new Query();
        $query->query = new Criterion\LogicalAnd($criteria);
        $query->sortClauses = array(
            new SortClause\Field('blog_post', 'publication_date', Query::SORT_DESC, $languages[0]),
        );

        return $query;
    }
}
