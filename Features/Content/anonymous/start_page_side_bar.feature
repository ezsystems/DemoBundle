@democontent
Feature: All of the side bar elements are visible and usable
    In order use the start page side bar
    As an anonymous user
    I need to view the content and navigate in a ezpublish demo content site using the home page side bar

    Scenario: I see side bar with the blocks in correct order
        Given I am not logged in
        When I go to homepage
        Then I see group elements:
            | elements       |
            | White Paper    |
            | Main Items     |
            | eZ News        |
            | Selected Video |
            | Tags           |

    Scenario: Clicking in "Get a copy button" redirects me to Discover eZPublish page
        Given I am not logged in
        And I am on homepage
        When I click on "Get your copy!" link
        Then I see "Discover eZ Publish 5" page

    Scenario: Buying products is not possible
        Given I am not logged in
        And I am on homepage
        When I fill "eZ Publish - Man jacket" Buy field with "2"
        And on "eZ Publish - Man jacket" I click on "Buy" button
        Then I see "login" page

    @javascript
    Scenario: News block redirects me to ez.no main site
        Given I am not logged in
        And I am on homepage
        When I click on "eZ News" link
        Then I see "ez.no" page

    @javascript
    Scenario: Read latest news from eZ News feed
        Given I am not logged in
        When I go to homepage
        Then on "eZ News" I see 5 links

    Scenario: I can see the Selected Video
        Given I am not logged in
        When I go to homepage
        Then on "Selected Video" I see "eZ Publish Optimize" video

    Scenario: Keyword tags are available in Tag block
        Given I am not logged in
        When I go to homepage
        Then on "Tags" I see links:
            | link              |
            | aconcagua         |
            | Blog              |
            | Post              |
            | cxm               |
            | deliver           |
            | eZ Publish        |
            | kilimanjaro       |
            | landing page      |
            | phone             |
            | Shopping New York |
            | Social            |
            | tech              |

    Scenario Outline: Tags are redirecting me to the correct page
        Given I am not logged in
        And I am on homepage
        When I click on "<tag>" link
        Then I see keyword page for "<tag>"
        And I see "Keyword: <tag>" title

        Examples:
            | tag               |
            | aconcagua         |
            | Blog              |
            | Post              |
            | cxm               |
            | deliver           |
            | eZ Publish        |
            | kilimanjaro       |
            | landing page      |
            | phone             |
            | Shopping New York |
            | Social            |
            | tech              |
