@democontent
Feature: Start page

    Scenario: Start page displays welcome text
        Given I am on the homepage
        Then I should see "Home"

    Scenario: Search works from the start page
        Given I am on the homepage
         When I search for "Home"
         Then I see "Search" page
          And I see search 1 result

    # @todo Expand test to also verify that we are actually logged in
    @javascript
    Scenario: Login using inline javascript form
        Given I go to the "Search" page
          And I follow "show login form"
         When I fill in "login-username" with "admin"
          And I fill in "login-password" with "publish"
          And I press "Login"
         Then I am on the homepage