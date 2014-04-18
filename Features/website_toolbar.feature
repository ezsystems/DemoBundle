@websitetoolbar
Feature: Website toolbar

    Scenario: As an anonymous user, I should not see the toolbar on the homepage
        Given I am on the homepage
        Then I do not see the website toolbar

    Scenario: As the admin user, I should see the toolbar on the homepage
        Given I am on the homepage
          And I am logged in as "admin" with password "publish"
         Then I see the website toolbar
