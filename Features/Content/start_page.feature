Feature: Start page

    Scenario: Start page displays welcome text
        When I go to homepage
        Then I should see "Home"

    Scenario: Search works from the start page
        Given I am on the "search" page
        When I search for "Home"
        Then I should be at "Search" page
        And I see 1 search result

    @javascript
    Scenario: Login using inline javascript form
        Given I am on the homepage
        And I follow "show login form"
        When I fill in "login-username" with "admin"
        And I fill in "login-password" with "publish"
        And I press "Login"
        Then I should be at homepage

    Scenario: eZ Logo redirects to homepage
        Given I am on "Site map" page
        When I click at eZ Logo image
        Then I should be at homepage
