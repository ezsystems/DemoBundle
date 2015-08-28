<?php
/**
 * File containing the Context class for Demo.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version //autogentag//
 */
namespace EzSystems\DemoBundle\Features\Context\Content;

use EzSystems\DemoBundle\Features\Context\Demo;
use Behat\Gherkin\Node\TableNode;
use PHPUnit_Framework_Assert as Assertion;

/**
 * Base context for Demo content assertion.
 */
class Context extends Demo
{
    /**
     * Set initial definitions.
     */
    public function __construct()
    {
        parent::__construct();

        $this->pageIdentifierMap += array(
            'search' => '/content/search',
            'site map' => '/content/view/sitemap/2',
            'tag cloud' => '/content/view/tagcloud/2',
        );

        // specify the tags for specific content
        $this->mainAttributes += array(
            'ez logo' => array('class' => 'logo', 'href' => '/'),
            'main content' => array('class' => 'main-content'),
            'main navigation' => array('class' => 'main-navi'),
        );
    }

    /**
     * This is an helper to retrieve the id of a Content object so that it can
     * be used on links for locations.
     *
     * @param string $text Text identifier for a location
     *
     * @return int
     *
     * @throws PendingException When location is not defined
     */
    protected function getDemoObjectLocationByText($text)
    {
        switch (strtolower($text)) {
            case 'shopping':
                return 74;
            case 'getting started':
                return 61;
        }

        throw new PendingException("Location for '$text' not defined.");
    }

    /**
     * @When I check site map for Location :location
     */
    public function iCheckSiteMapForLocation($location)
    {
        $id = $this->getDemoObjectLocationByText($location);
        $this->visit('/content/view/sitemap/' . $id);
    }

    /**
     * @Given I am on tag page for :tag
     */
    public function iAmOnTagPageFor($tag)
    {
        $this->visit("/content/keyword/$tag");
    }

    /**
     * @When /^I go to tag cloud for "(?P<tag>[^"]*)"$/
     */
    public function iCheckTagCloudFor($tag)
    {
        $id = $this->getDemoObjectLocationByText($tag);
        $this->visit("/content/view/tagcloud/$id");
    }

    /**
     * @Then I (should) see tag page for :tag
     */
    public function iSeeTagPageFor($tag)
    {
        $currentUrl = $this->getUrlWithoutQueryString($this->getSession()->getCurrentUrl());

        $expectedUrl = $this->locatePath("/content/keyword/$tag");

        Assertion::assertEquals(
            $expectedUrl,
            $currentUrl,
            "Unexpected URL of the current site. Expected: '$expectedUrl'. Actual: '$currentUrl'."
        );
    }

    /**
     * Tests that the page contains a specific link with a specific text (the text must be within a span).
     * @Then It has the text :text in a span linked to :link
     * @Then I see the text :text in a span linked to :link
     */
    public function itHasATextSpanLinkedTo($text, $link)
    {
        $this->assertSession()->pageTextContains($text);
        Assertion::assertCount(
            1,
            $this->getXpath()->findXpath(sprintf('//a[@href="%s"]/span[text()="%s"]', $link, $text))
        );
    }

    /**
     * Tests if a link is present in the breadcrumbs.
     * @Then the breadcrumb has the following links:
     */
    public function breadcrumbHasTheFollowingLinks(TableNode $table)
    {
        foreach ($table->getTable() as $breadcrumbItem) {
            $text = $breadcrumbItem[0];
            $url = $breadcrumbItem[1];

            // this is not a link (the current page)
            if ($url === 'null') {
                $query = sprintf(
                    '//ul[@id="wo-breadcrumbs"]/li/span[text()="%s"]',
                    $text
                );
            } else {
                $query = sprintf(
                    '//ul[@id="wo-breadcrumbs"]/li/a[@href="%s"]/span[text()="%s"]',
                    $url,
                    $text
                );
            }

            Assertion::assertCount(
                1, $this->getXpath()->findXpath($query)
            );
        }
    }

    /**
     * Test if image is present on page and is downloadable (`img` tag must contain `alt` attribute).
     * @Then I (should) see a valid thumbnail for image with alternative text :imageAlternativeText
     */
    public function iShouldSeeAVailidThumbnailForImageWithAlternativeText($imageAlternativeText)
    {
        $image = $this->getXpath()->findXpath("//img[contains(@alt, '" . $imageAlternativeText . "')]");

        if (count($image) == 0) {
            throw new \Exception(sprintf('Image with an alternative text `%s` was not found', $imageAlternativeText));
        }

        $file = $image[0]->getAttribute('src');

        $client = new \Guzzle\Http\Client();
        $request = $client->get($this->locatePath($file));
        $response = $request->send();

        Assertion::equalTo(
            $response->getStatusCode(), 200
        );

        Assertion::assertRegexp(
            '/image\/(.*)/', $response->getHeader('content-type')->__toString()
        );
    }
}
