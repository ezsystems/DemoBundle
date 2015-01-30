Feature: Place

    Scenario: As a visitor, I can see the place page
        Given I am on the "place" page
         Then I see "eZ Mountains" text

    Scenario: As a visitor, I can see the place list
        Given I am on "/placelist/110"
        Then I see "Mount Fuji" text

    Scenario: As a visitor, I can see the place list sorted
        Given I am on "/placelist/110/45.6152665/5.2234365/10000"
        Then I see "Mount Ventoux" text
