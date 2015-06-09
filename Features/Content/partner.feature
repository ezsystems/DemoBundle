Feature: Partner
    Scenario: A visitor can't see "Partner" in the main menu
        Given I am not logged in
         Then on "main navigation" I shouldn't see links:
             | Partner |

    Scenario: A visitor can't access "Partner" page
        Given I am not logged in
        Given I am on the homepage
         When I go to "partner" page
         Then I see "Login" text

    Scenario: As administrator, I can see "Partner" in the main menu
        Given I am logged as an "administrator"
        Given I am on the "home" page
         Then on "main navigation" I see links:
             | Partner |

    Scenario: As administrator, I can see Partner page
        Given I am logged as an "administrator"
        Given I am on the "partner" page
         Then I see "eZ Logo Black" text
          And I see "eZ Logo White" text
