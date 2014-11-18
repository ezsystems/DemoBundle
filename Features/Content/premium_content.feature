Feature: Premium content

    Scenario: As a subscribed User, I get the full content
        Given I am logged in as "subscriber" with password "publish"
        When I go to "/Getting-Started/Selected-Features/Getting-Started-with-eZ-Publish-Platform"
        Then I am on the "premium_article" page
         And I see "Our objective is to provide you the most compelling" text
         And I see "Welcome to eZ Publish Platform 5.4, the Castor release." text

    Scenario: As a regular member, I get a teaser for Premium Content
        Given I am logged in as "member" with password "publish"
        When I go to "/Getting-Started/Selected-Features/Getting-Started-with-eZ-Publish-Platform"
        Then I am on the "premium_article" page
         And I see "Key new features you don't want to miss" text
         And I see "This article is only available to Premium subscribers." text
         And I don't see "Our objective is to provide you the most compelling" text
