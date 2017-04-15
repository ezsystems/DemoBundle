Feature: See usefull breadcrumb
    In order to do see breadcrumb
    As an anonymous user
    I want to be able to see breadcrumb and use it

    Scenario: Breadcrumb shows on homepage
       When I go to homepage
       Then I see breadcrumb element

    Scenario: Breadcrumb on homepage has no links
        When I go to homepage
        Then on breadcrumb I see a "Home" key
         And on breadcrumb I don't see a "Home" link

    Scenario: See breadcrumb on second level
       Given I am on homepage
        When I click at "Getting Started" link
        Then on breadcrumb I see a "Home" link
         And on breadcrumb I see a "divider" element
         And on breadcrumb I see a "Getting Started" key

    Scenario: See breadcrumb on third level
       Given I am on homepage
        When I click at "Getting Started" link
         And I click at "Selected Feature" link
        Then on breadcrumb I see a "Home" link
         And on breadcrumb I see a "Getting Started" link
         And on breadcrumb I see a "Selected Features" key

    Scenario: Use breadcrumb to go to homepage
       Given I am on "Selected Features" page
        When on breadcrumb I click at "Home" link
        Then I see homepage

    Scenario: Use breadcrumb to go to parent page
       Given I am on "Selected Features" page
        When on breadcrumb I click at "Getting Started" link
        Then I see "Getting Started" page
