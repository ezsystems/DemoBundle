Feature: Blog page

    Scenario: Tag cloud shows on Blog
        Given I am on the homepage
        When I follow "Blog"
        Then on "Tag Cloud" I see links:
            | link         |
            | Blog Post    |
            | Post         |
            | cxm          |
            | eZ Publish   |
            | landing page |
            | Social       |

    Scenario Outline: Verify I can access the Tag Cloud Links
        Given I am on the "Blog" page
        When on "Tag Cloud" I click on <link> link
        Then I see <message> message

    Examples:
        | link         | message                                |
        | Blog Post    | This will be our magic recipe          |
        | Post         | This will be our magic recipe          |
        | eZ Publish   | This will be our magic recipe          |
        | landing page | It's helping me optimizing my business |
        | Social       | This will be our magic recipe          |

    Scenario: Tags show on Blog
        Given I am logged in as "anonymous"
        When I am on "Blog" page
        Then on "Tags" I see links:
            | link             |
            | Blog Post (1)    |
            | cxm (1)          |
            | eZ Publish (1)   |
            | landing page (1) |
            | Social (1)       |

    Scenario Outline: Verify I can access the Tag Links
        Given I am on "Blog" page
        When on "Tags" I click on <link> link
        Then I see <message> message

    Examples:
        | link             | message                                |
        | Blog Post (1)    | This will be our magic recipe          |
        | Post (1)         | This will be our magic recipe          |
        | eZ Publish (1)   | This will be our magic recipe          |
        | landing page (1) | It's helping me optimizing my business |
        | Social (1)       | This will be our magic recipe          |

    Scenario: Archive shows on Blog
        Given I am logged in as "anonymous"
        When I am on "Blog" page
        Then on "Archive" I see links:
            | link         |
            | January 2013 |
            | March 2012   |

    Scenario Outline: Verify I can access the Archive Links
        Given I am on "Blog" page
        When on "Archive" I click on <link> link
        Then I see <message> message

    Examples:
        | link         | message                                |
        | January 2013 | It's helping me optimizing my business |
        | March 2012   | This will be our magic recipe          |

    Scenario: Verify the Blog posts are present
        Given I am logged in as "anonymous"
        When I am on "Blog" page
        Then on "Content" I see links:
            | link                                   |
            | It's helping me optimizing my business |
            | This will be our magic recipe          |

    Scenario Outline: Verify that I can access the links
        Given I am on "Blog" page
        When I click on <link> link
        Then I see <message> page

    Examples:
        | link                                   | message                                |
        | It's helping me optimizing my business | It's helping me optimizing my business |
        | This will be our magic recipe          | This will be our magic recipe          |
