@democontent
Feature: Shopping cart is available for an administrator user
    In order use the start page side bar
    As an administrator user
    I need to be able to use shopping cart

    Scenario: Add an item to Shop Basket from the start page
        Given I am logged in as an "administrator"
        And I am on homepage
        When I fill "eZ Publish - Man jacket" Buy field with "4"
        And on "eZ Publish - Man jacket" I click "Buy" button
        Then I see Shop Basket page
        And I see Shop Add page for 4 "eZ Publish - Man jacket" items
