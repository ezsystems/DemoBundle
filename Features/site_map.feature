Feature: See site map
    In order to do see site map
    As an anonymous user
    I want to be able to see site map content listing

    ###
    # These tests use the default Content objects
    # of an installation that have eZDemo with content
    #
    # For better readability these tests should be tested
    # with Content manipulation, ie. creating the content
    # that should be tested
    ###

    @javascript
    Scenario: See site map page
       Given I am on homepage
        When I click at "Site map" link
        Then I see "Site Map" page

    Scenario: See that site map content as different types
        When I go to "Site Map" page
        Then I see links in:
            | Link              | Type  |
            | Getting Started   | Title |
            | Feedback          | List  |
            | Resources         | List  |
            | Selected Features | List  |
            | Contact Us        | Title |

    Scenario: See site map content
        When I go to "Site Map" page
        Then I see links for Content objects:
            | Object                                |
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
        Then I see links for Content objects:
            | Object            | Parent           |
            | Getting Started   |                  |
            | Feedback          | Getting Started  |
            | Resources         | Getting Started  |
            | Selected Features | Getting Started  |
            | Shopping          |                  |
            | Products          | Shopping         |
            | Services          | Shopping         |

    Scenario: Unable to see site map content with deeper sub contents (third and deeper levels of the content tree)
        When I go to "Site Map" page
        Then I see links for Content objects:
            | Object   | Parent   |
            | Shopping |          |
            | Products | Shopping |
            | Services | Shopping |
         And I don't see links:
            | Link                    |
            | eZPublish Community Mug |
            | Trainning Services      |
            | Professional Services   |

    Scenario: See site map for Shopping Location
       Given I am on "Site Map" page
        When I check site map for Location "Shopping"
        Then I see links for Content objects:
            | Object                   | Parent   |
            | Products                 |          |
            | eZ Publish Community Mug | Products |
            | Services                 |          |
            | Training Services        | Services |
            | Professional Services    | Services |
         And I don't see links:
            | Link            |
            | Getting Started |
            | Shopping        |
            | Contact Us      |

    Scenario: See site map main Content objects ordered
        When I go to "Site Map" page
        Then I see links for Content objects in following order:
            | Object                |
            | Getting Started       |
            | Shopping              |
            | Blog                  |
            | footer                |
            | Discover eZ Publish 5 |
            | Contact Us            |

    Scenario: Unable to see site map sub content ordered (second level of the content tree)
        When I go to "Site Map" page
        Then I see links for Content objects in following order:
            | Object            | Parent          |
            | Getting Started   |                 |
            | Feedback          | Getting Started |
            | Resources         | Getting Started |
            | Selected Features | Getting Started |
            | Shopping          |                 |

    ###
    # @todo Test different status at different levels
    ###

    Scenario: Draft versions do not show on site map
       Given test is pending need content managing

    Scenario: Draft versions on second level do not show on site map
       Given test is pending need content managing

    Scenario: Archived versions do not show on site map
       Given test is pending need content managing

    Scenario: Archived versions on second level do not show on site map
       Given test is pending need content managing

    ###
    # @todo Test max elements that show on site map
    ###

    Scenario: See max topic Content objects on site map
       Given test is pending need content managing

    Scenario: More than max topic Content objects do not show on site map
       Given test is pending need content managing

    Scenario: See max subtopic Content objects on site map
       Given test is pending need content managing

    Scenario: More than max subtopic Content objects do not show on site map
       Given test is pending need content managing
