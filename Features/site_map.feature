Feature: See site map
    In order to do see site map
    As an anonymous user
    I want to be able to see site map content listing

    # No content
    Scenario: See site map without content
       Given I don't have Content object "footer"
        When I click at "Site map" link
        Then I see "Site map" page
         And I don't see any Content object

    # Clean demo install w/o content
    Scenario: See site map content in demo w/o content
       Given I have Content object "footer"
        When I click at "Site map" link
        Then I see "Site map" page
         And I see link for Content object "footer"

    ###
    # Visual tests
    ###
    Scenario: Site map content is presented in 2 columns
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name      | Location  |
            | Folder1   |           |
            | Folder2   |           |
            | Folder3   |           |
        When I click at "Site map" link
        Then I see "2" columns with Content object links
         And I see column "1" with "2" Content objects links
         And I see column "2" with "1" Content objects links

    Scenario: Site map content is presented in headers
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name       | Location  |
            | Folder1    |           |
            | Article1.1 | /Folder1  |
            | Folder2    |           |
            | Article2.1 | /Folder2  |
            | Article2.2 | /Folder2  |
        When I click at "Site map" link
        Then I see "2" columns with Content object links
         And I see links in
            # Link       | Type    |
            | Folder1    | Header2 |
            | Article1.1 | List    |
            | Folder2    | Header2 |
            | Article2.1 | List    |
            | Article2.2 | List    |

    ###
    # Tests with content
    ###
    Scenario: See site map content
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name      | Location  |
            | Article1  |           |
            | Folder1   |           |
            | Folder2   |           |
            | Last One  |           |
        When I click at "Site map" link
        Then I see links for Content objects
            # Object   |
            | Article1 |
            | Folder1  |
            | Folder2  |
            | Last One |

    Scenario: See site map content with sub content (second level of the content tree)
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name       | Location  |
            | Folder2    |           |
            | Article2.1 | /Folder2  |
            | Article2.2 | /Folder2  |
            | Article2.3 | /Folder2  |
            | Folder2.1  | /Folder2  |
        When I click at "Site map" link
        Then I see links for Content objects
            # Object     | Parent  |
            | Folder2    |         |
            | Article2.1 | Folder2 |
            | Article2.2 | Folder2 |
            | Article2.3 | Folder2 |
            | Folder2.1  | Folder2 |

    Scenario: Attempt to see site map content with deeper sub contents (third and deeper levels of the content tree)
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name            | Location       |
            | Folder1         |                |
            | Folder1.2       | /Folder1       |
            | Folder1.2.3     | /Folder1.2     |
            | Folder1.2.3.4   | /Folder1.2.3   |
            | Folder1.2.3.4.5 | /Folder1.2.3.4 |
            | Folder2         |                |
            | Folder2.1       | /Folder2       |
            | Folder2.1.1     | /Folder2.1     |
        When I click at "Site map" link
        Then I see links for Content objects
            # Object     | Parent  |
            | Folder1    |         |
            | Folder1.2  | Folder1 |
            | Folder2    |         |
            | Folder2.1  | Folder2 |
         And I don't see links
            | Folder1.2.3     |
            | Folder1.2.3.4   |
            | Folder1.2.3.4.5 |

    Scenario: See site map content ordered
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name      | Location  | Priority  |
            | Article1  |           | 2         |
            | Folder1   |           | 4         |
            | Folder2   |           | 3         |
            | Last One  |           | 1         |
        When I click at "Site map" link
        Then I see links for Content objects in following order
            # Object   |
            | Last One |
            | Article1 |
            | Folder2  |
            | Folder1  |

    Scenario: Attempt to see site map sub content ordered (second level of the content tree)
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name       | Location  | Priority  |
            | Folder2    |           |           |
            | Article2.1 | /Folder2  | 2         |
            | Article2.2 | /Folder2  | 1         |
            | Article2.3 | /Folder2  | 4         |
            | Folder2.1  | /Folder2  | 3         |
        When I click at "Site map" link
        Then I see links for Content objects in following order
            # Object     | Parent  |
            | Folder2    |         |
            | Article2.1 | Folder2 |
            | Article2.2 | Folder2 |
            | Article2.3 | Folder2 |
            | Folder2.1  | Folder2 |

    Scenario: See site map content with maximum (10) main links
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name       |
            | Article01  |
            | Article02  |
            | Article03  |
            | Article04  |
            | Article05  |
            | Article06  |
            | Article07  |
            | Article08  |
            | Article09  |
            | Article10  |
        When I click at "Site map" link
        Then I see links for Content objects
            # Object     |
            | Article01  |
            | Article02  |
            | Article03  |
            | Article04  |
            | Article05  |
            | Article06  |
            | Article07  |
            | Article08  |
            | Article09  |
            | Article10  |

    Scenario: Attempt to see site map content with more than maximum (10) main links
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name       |
            | Article01  |
            | Article02  |
            | Article03  |
            | Article04  |
            | Article05  |
            | Article06  |
            | Article07  |
            | Article08  |
            | Article09  |
            | Article10  |
            | Article11  |
            | Article12  |
            | Article13  |
            | Article14  |
            | Article15  |
        When I click at "Site map" link
        Then I see links for Content objects
            # Object     |
            | Article01  |
            | Article02  |
            | Article03  |
            | Article04  |
            | Article05  |
            | Article06  |
            | Article07  |
            | Article08  |
            | Article09  |
            | Article10  |
         And I don't see links
            | Article11  |
            | Article12  |
            | Article13  |
            | Article14  |
            | Article15  |

    # In the next 2 tests there will be a tree structure of 10 objects (15 in the second test) 
    # that contain another 10 objects (again 15 for the second test):
    #   - tree structure:
    #    ├──  Folder1
    #    │   ├── Folder1.1
    #    │   ├── Folder1.2
    #    │   │ ...
    #    │   ├── Folder1.9
    #    │   └── Folder1.10
    #    │ ...
    #    └──  Folder10
    #        ├── Folder10.1
    #        │ ...
    #        └── Folder10.10
    #
    # For the creation of this structure the next BDD sentence is used:       
    #   'I have "<totalObjects>" Content objects of Content Type "A" containing "<totalSubObjects>" Content objects of Content Type "A"'
    Scenario: See site map content with maximum main and sub content
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have "10" Content objects of Content Type "A" containing "10" Content objects of Content Type "A"
        When I click at "Site map" link
        Then I see "10" "main" links
         And I see a "110" Content object links

    Scenario: Attempt to see site map content with more than maximum main and sub content
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have "15" Content objects of Content Type "A" containing "15" Content objects of Content Type "A"
        When I click at "Site map" link
        Then I see "10" "main" links
         And I see "10" "sub" links under each "main" link
         And I see a "110" Content object links

    # For this scenario it is needed to change the location manualy on URL
    # instead that, it has the location specified
    Scenario: See site map for a specific location
       Given I have Content Type "A" with
            | definition | container |      |
            | field      | eztstring | Name |
         And I have the following Content objects of Content Type "A"
            # Name            | Location       |
            | Folder1         |                |
            | Folder1.2       | /Folder1       |
            | Folder1.2.3     | /Folder1.2     |
            | Folder1.2.3.4   | /Folder1.2.3   |
            | Folder1.2.3.4.5 | /Folder1.2.3.4 |
            | Folder2         |                |
            | Folder2.1       | /Folder2       |
        When I check site map for location "Folder1.2.3"
        Then I see links for Content objects
            # Object         | Parent      |
            | Folder1.2.3    |             |
            | Folder1.2.3.4  | Folder1.2.3 |
         And I don't see links
            | Folder1         |
            | Folder1.2       |
            | Folder1.2.3.4.5 |
            | Folder2         |
            | Folder2.1       |

    ###
    # State tests ( Archived, Published, Draft )
    ###
    Scenario: Draft versions do not show on site map
       Given I have Content Type "A" with
            | eztstring            | Name |
         And I have a Content object Draft "B" of Content Type "A"
        When I click at "Site map" link
         And I don't see any Content object

    Scenario: Archived versions do not show on site map
       Given I have Content Type "A" with
            | eztstring | Name |
         And I have a Content object "B" of Content Type "A" with
            | Name | Archived |
         And I update Content object "B" to
            | Name | Published |
        When I click at "Site map" link
        Then I see links for Content objects
            # Object     |
            | Published  |
         And I don't see links
            | Archived   |

