Feature: Start page

    Scenario: Login using standard form
        Given I am on "/login"
         When I fill in "_username" with "admin"
          And I fill in "_password" with "publish"
          And I click at "Login" button
         Then I should be at homepage

