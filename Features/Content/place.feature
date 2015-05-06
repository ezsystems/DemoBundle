Feature: Place

    Scenario: As a visitor, I can see the place page
        Given I am on the "place" page
         Then I see "eZ Mountains" text
         And I see "Mount Fuji" text
         And I see a valid thumbnail for image with alternative text "mount fuji"

    Scenario: As a visitor, I can see the place list
        Given I am on "/placelist/110"
        Then I see "Mount Fuji" text

    Scenario: As a visitor, I can see the place list sorted
        Given I am on "/placelist/110/45.6152665/5.2234365/10000"
        Then I see "Mount Ventoux" text

    Scenario: As a visitor, I can see the Mount Fuji page
        Given I am on "/eZ-Mountains/Mount-Fuji"
        Then I see "Mount Fuji" text
        And I see "Mount Fuji, located on Honshu Island, is the highest mountain in Japan at 3,776.24 m (12,389 ft)." text
        And I see a valid thumbnail for image with alternative text "mount fuji"
