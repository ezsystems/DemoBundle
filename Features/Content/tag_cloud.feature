Feature: Tag cloud
    In order to check tags has a cloud
    As an anonymous user
    I need to be able to understand which tags are less/most used

    @javascript
    Scenario: Open Tag cloud page
        Given I am on homepage
        When I follow "Tag cloud"
        Then I see "Tag cloud" page

    Scenario: See tags on Tag cloud
       When I go to "Tag cloud" page
       Then I see links:
            | tags       |
            | Ventoux   |
            | Blog Post  |
            | cxm        |
            | deliver    |
            | eZ Publish |
            | Social     |

    Scenario Outline: See keyword page
        Given I am on "Tag cloud" page
        When I follow "<tag>"
        Then I see tag page for "<tag>"
        And I see "Keyword: <tag>" title

         Examples:
            | tag         |
            | Social      |
            | Ventoux     |
            | deliver     |

    Scenario: See where tags are used
        Given I am on "Tag cloud" page
        When I follow "Ventoux"
        Then I see table with:
            | column 1 | column 2 |
            | Link     | Type     |
            | Create   | Article  |
            | Optimize | Article  |


  Scenario: Follow to Content object where Tag is used
        Given I am on tag page for "Ventoux"
        When I follow "Optimize"
        Then I see "Optimize" title

    Scenario: See Tag cloud for a specific location
        Given I am on "Tag cloud" page
        When I go to tag cloud for "Getting started"
        Then I see links:
            | links       |
            | deliver     |
            | Ventoux    |
            | kilimanjaro |
        And I see "Ventoux" text emphasized
