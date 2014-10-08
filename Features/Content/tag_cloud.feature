Feature: Tag cloud
    In order to check tags has a cloud
    As an anonymous user
    I need to be able to understand which tags are less/most used

    @javascript
    Scenario: Open Tag cloud page
        Given I am on homepage
        When I click at "Tag cloud" link
        Then I should be at "Tag cloud" page

    Scenario: See tags on Tag cloud
       When I go to "Tag cloud" page
       Then I should see links:
            | tags       |
            | Ventoux    |
            | Blog Post  |
            | cxm        |
            | deliver    |
            | eZ Publish |
            | Social     |

    Scenario Outline: See keyword page
        Given I am on "Tag cloud" page
        When I click on "<tag>" link
        Then I should see tag page for "<tag>"
        And I should see "Keyword: <tag>" title

         Examples:
            | tag         |
            | Social      |
            | Ventoux     |
            | deliver     |

    Scenario: See where tags are used
        Given I am on "Tag cloud" page
        When I click at "Ventoux" link
        Then I should see table with:
            | column 1 | column 2 |
            | Link     | Type     |
            | Create   | Article  |
            | Optimize | Article  |


  Scenario: Follow to Content object where Tag is used
        Given I am on tag page for "Ventoux"
        When I click at "Optimize" link
        Then I should see "Optimize" title

    Scenario: See Tag cloud for a specific location
        Given I am on "Tag cloud" page
        When I go to tag cloud for "Getting started"
        Then I should see links:
            | links       |
            | deliver     |
            | Ventoux     |
            | kilimanjaro |
        And I should see "Ventoux" text emphasized
