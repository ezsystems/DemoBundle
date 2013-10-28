Feature: Menu
    In order to easily access pages
    As an anonymous user
    I need to be able move from page to page and see sub pages

    Scenario: See menu in starting page
        When I go to homepage
        Then I see main menu

    Scenario: Access a page
       Given I am on homepage
        When I click at "Getting Started" link
        Then I see "Getting started" page

    Scenario: See menu pages ordered
        When I go to homepage
        Then on main menu I see links in following order:
            | Links                 |
            | Getting Started       |
            | Shopping              |
            | Blog                  |
            | Discover eZ Publish 5 |
            | Contact Us            |

    Scenario: See sub pages
       Given I am on homepage
        When I click at "Getting Started" link
        Then I see the sub menu
         And on sub menu I see the links for Content objects:
            | Links             |
            | Feedback          |
            | Resources         |
            | Selected Features |

    Scenario: Shouldn't see third level sub menu
       Given I am on homepage
        When I click at "Getting Started" link
         And I click at "Selected Features" link
        Then I see "Selected Features" page
         And on main menu I don't see the links:
            | Links                             |
            | Automate                          |
            | Deliver                           |
            | Create                            |
            | Optimize                          |
            | Getting Started with eZ Publish 5 |

    Scenario: Shouldn't see sub menu when there isn't a second level
       Given I am on homepage
        When I click at "Contact Us" link
        Then I see "Contact Us" page
         And I don't see the sub menu
