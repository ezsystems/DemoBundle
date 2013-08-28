Feature: Start page

    Scenario: Start page displays welcome text
        Given I am on the homepage
        Then I should see "Home"

    Scenario: Search works from the start page
        Given I am on the homepage
         When I search for "Home"
         Then I am on the "Search Page"
          And I see search 1 result

