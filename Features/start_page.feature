Feature: Start page

    Scenario: Start page displays welcome text
        Given I am on the homepage
        Then I should see "Home"

    Scenario: Search works from the start page
        Given I am on the homepage
         When I search for "Home"
         Then I am on the "Search Page"
          And I see search 1 result

    Scenario: Access to User profile when logged in
    Given I am logged in as "admin" with password "publish"
     When I follow "My profile"
     Then I am on the "User profile"
      And I should see "Administrator User"

    @javascript
    Scenario: Access to User profile when logged in using inline javascript login form
    Given I am logged in as "admin" with password "publish" using inlinelogin
     When I follow "My profile"
     Then I am on the "User profile"
      And I should see "Administrator User"
