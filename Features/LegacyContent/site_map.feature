Feature: See site map
    In order to do see site map
    As an anonymous user or administrator for restricted content
    I want to be able to see site map content listing

    @javascript
    Scenario: See site map page
       Given I am on home page
        When I click at "Site map" link
        Then I should be at "Site Map" page

    Scenario: See that site map content as different types
        When I go to "Site Map" page
        Then I should see the following links in:
            | link              | type  |
            | Getting Started   | Title |
            | Feedback          | List  |
            | Resources         | List  |
            | Selected Features | List  |
            | Contact Us        | Title |

    Scenario: See site map content
        When I go to "Site Map" page
        Then I should see the following links:
            | object link                           |
            | Getting Started                       |
            | footer                                |
            | Contact Us                            |
            | Shopping                              |
            | Blog                                  |
            | Discover eZ Publish 5                 |
            | Feedback                              |
            | Resources                             |
            | Selected Features                     |

    Scenario: See site map content with sub content (second level of the content tree)
        When I go to "Site Map" page
        Then I should see links:
            | object link       | parent           |
            | Getting Started   |                  |
            | Feedback          | Getting Started  |
            | Resources         | Getting Started  |
            | Selected Features | Getting Started  |
            | Shopping          |                  |
            | Products          | Shopping         |
            | Services          | Shopping         |

    Scenario: Unable to see site map content with deeper sub contents (third and deeper levels of the content tree)
        When I go to "Site Map" page
        Then on "main content" I should see links:
            | object   | parent   |
            | Shopping |          |
            | Products | Shopping |
            | Services | Shopping |
        And on "main content" I shouldn't see links:
            | link                    |
            | eZPublish Community Mug |
            | Trainning Services      |
            | Professional Services   |

    Scenario: See site map for Shopping Location
       Given I am on "Site Map" page
        When I check site map for Location "Shopping"
        Then on "main content" I should see links:
            | object link              | parent   |
            | Products                 |          |
            | eZ Publish Community Mug | Products |
            | Services                 |          |
            | Training Services        | Services |
            | Professional Services    | Services |
        And on "main content" I shouldn't see links:
            | Link            |
            | Getting Started |
            | Shopping        |
            | Contact Us      |

    Scenario: See site map main Content objects ordered
        When I go to "Site Map" page
        Then I should see links in the following order:
            | object link           |
            | Getting Started       |
            | Shopping              |
            | Blog                  |
            | footer                |
            | Discover eZ Publish 5 |
            | Contact Us            |

    Scenario: Unable to see site map sub content ordered (second level of the content tree)
        When I go to "Site Map" page
        Then I should see links in the following order:
            | object link       | parent          |
            | Getting Started   |                 |
            | Feedback          | Getting Started |
            | Resources         | Getting Started |
            | Selected Features | Getting Started |
            | Shopping          |                 |

    Scenario: As administrator I can see restricted objects
        Given I am logged as an "administrator"
        When I go to "Site Map" page
        Then on "main content" I should see links:
            | links         |
            | eZ Logo Black |
            | eZ Logo White |
            | Logos         |

    Scenario: A visitor can't see restricted objects
        Given I am not logged in
        When I go to "Site Map" page
        Then on "main content" I shouldn't see links:
            | links         |
            | eZ Logo Black |
            | eZ Logo White |
            | Logos         |
