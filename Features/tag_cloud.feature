Feature: Tag cloud
    In order to check tags has a cloud
    As an anonymous user
    I need to be able to understand which tags are less/most used

    @javascript
    Scenario: Open Tag cloud page
       Given I am on homepage
        When I click at "Tag cloud" link
        Then I see "Tag cloud" page

    Scenario: See tags on Tag cloud
       When I go to "Tag cloud" page
       Then I see links:
            | Tags       |
            | Blog Post  |
            | cxm        |
            | deliver    |
            | eZ Publish |
            | Social     |

    Scenario Outline: See keyword page
       Given I am on "Tag cloud" page
        When I click at "<Tag>" link
        Then I see keyword page for "<Tag>"
         And I see "Keyword: <Tag>" title

         Examples:
            | Tag         |
            | Social      |
            | kilimanjaro |
            | deliver     |

    Scenario: See where tags are used
       Given I am on "Tag cloud" page
        When I click at "kilimanjaro" link
        Then I see table with:
            | Column 1 | Column 2 |
            | Link     | Type     |
            | Deliver  | Article  |
            | Create   | Article  |
            | Optimize | Article  |

    Scenario: Follow to Content object where Tag is used
       Given I am on keyword page for "kilimanjaro"
        When I click at "Deliver" link
        Then I see "Deliver" title

    Scenario: See Tag cloud for a specific location
       Given I am on "Tag cloud" page
        When I check tag cloud for location "Getting started"
        Then I see links:
            | Links       |
            | deliver     |
            | kilimanjaro |
         And I see "kilimanjaro" text emphasized
