Feature: Folder

  Scenario: As a visitor, I can see the services list
    Given I am on the "services" page
    Then I see "eZ Publish Enterprise Service" text
    And I see "Support & Maintenance" text
    And I see "Professional Services" text
    And I see "Training Services" text

  Scenario: As a visitor, I can see the products list
    Given I am on the "products" page
    Then I see "eZ Publish Community - iPhone 4 Case" text
    And I see "eZ Publish - Samsung Galaxy SIII Case" text
    And I see "eZ Publish Community Mug" text
    And I see "eZ Publish - Man jacket" text

  Scenario: As a visitor, I can see the resources list
    Given I am on the "resources" page
    Then I see "eZ Publish Tutorials" text
    And I see "eZ User Documentation" text
    And I see "Technical Documentation" text
    And I see "Demos and Videos" text
