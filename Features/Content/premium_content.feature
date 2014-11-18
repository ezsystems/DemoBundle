Feature: Premium content

    Scenario: As a subscribed User, I get the full content
        Given I am logged in as "john.doe" with password "publish"
        When I go to "/Premium-article"
        Then I am on the "premium_article" page
         And I see "This summary will only be shown to subscribers" text
         And I see "This body will also be limited to premium subscribers" text

    Scenario: As a regular member, I get a teaser for Premium Content
        Given I am logged in as "zachary.zoe" with password "publish"
        When I go to "/Premium-article"
        Then I am on the "premium_article" page
         And I see "This is the subscriber teaser" text
         And I see "This article is only available to Premium subscribers" text
         And I don't see "This summary will only be shown to subscribers" text

    Scenario: As an anonymous user, I get a login box on Premium Content
        When I go to "/Premium-article"
        Then I am on the "premium_article" page
         And I see "This is the subscriber teaser" text
         And I see "This article is only available to Premium subscribers" text
         And I don't see "This summary will only be shown to subscribers" text
         # And I see a login form
