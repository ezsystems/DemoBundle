Feature: Search ( basic search )
    In order to do a search
    As an anonymous user
    I need to be able to make a search

    # @NOTICE:  'When I search for "<data>"' sentence is high level BDD 
    #   for low level BDD:
    #          Given I am at "home" page
    #           When I fill "top search" input with "<data>"
    #            And I press "enter" key
    #           Then I am at "search" page

    ###
    # Basic functionality
    ###
    Scenario: Make a simple search
       Given I am at "home" page
        When I search for "home"
        Then I see "1" search results

    Scenario: No results will display that string wasn't found
       Given I am at "home" page
        When I search for "this-value-doesnt-exist"
        Then I see "0" search results
         And I see message "No results were found when searching for 'this-value-doesnt-exist'"

    # Q: these "tips" scenarios could be merged to the above scenarios, should they?
    Scenario: No results will display search tips
       Given I am at "home" page
        When I search for "this-value-doesnt-exist"
        Then I see "0" search results
         And I see search tips

    Scenario: If search returns values search tips won't be displayed
       Given I am at "home" page
        When I search for "home"
        Then I see "1" search results
         And I see no search tips

    Scenario Outline: Search field is present in every page
       Given I am at "home" page
        When I click at "<page>" link
        Then I see "search" input

        Examples: 
            | page      |
            | Tag cloud |
            | Site map  |
            | Register  |
            | Login     |

    Scenario: Search for empty string
       Given I am at "search" page
        When I search for ""
        Then I see "0" search results

    ###
    # Testing ez fields
    ###
    
    # eZString
    Scenario Outline: Restults returned on ezstring field
       Given I have a Content Type "B" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | ezstring | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data             |
        # exact word
            | field            |
        # first character in upper case
            | Field            |
        # UPPER CASE
            | FIELD            |
        # different
            | fIeLd            |
        # lower case
            | coupleofwords    |
        # exact part of string without cutting any word
            | and some numbers |
        # exact number
            | 0123456789       |
        # float number (exact)
            | 123.45           |
        # float number and special characters
            | 123.45$          |
            | 123.45$&%        |
        # email from host name
            | ez.no            |
            | @ez.no           |
        # email from first word
            | example          |
            | example@         |
        # complete email
            | example@ez.no    |

    Scenario Outline: No search results on ezstring field
       Given I have a Content Type "B" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | ezstring | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
        When I search for "<data>"
        Then I see "0" search results

        Examples:
            | data         |
        # word not complete
            | fiel         | 
        # CamelCase
            | couple       | 
        # existing words and a not complete word
            | has a Couple | 
        # number in text
            | ten          | 
        # number
            | 100          | 
        # 2 numbers without spaces
            | 10256        | 
        # number not complete
            | 456789       | 
        # float number not complete
            | 123          |
            | .45          |
        # special characters
            | $            |
            | $&%          |

    # eZAuthor
    Scenario Outline: Results return on ezauthor field
       Given I have a Content Type "B" with the following fields
            | ezauthor | Author | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Author | 1 | Administrator | admin@ez.no  |
            | Author | 2 | John Doe      | john@doe.com |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data               |
            | John               |
            | administrator      |
            | JOHN DOE           |
            | john administrator |
            | john               |
            | john@              |
            | john@doe.com       |
            | admin@ john @ez.no |
        # @NOTICE: it accepts a non existing email
            | john@ez.no         |
            | john@admin         |

    Scenario Outline: No search results on ezauthor field
       Given I have a Content Type "B" with the following fields
            | ezauthor | Author | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Author | 1 | Administrator | admin@ez.no  |
            | Author | 2 | John Doe      | john@doe.com |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data        |
            | ministrator |
            | mini        |
            | hn Doe      |
            | ez.com      |

    # eZComments
    Scenario Outline: Results return on ezcomments field
       Given I have a Content Type "B" with the following fields
            | ezcomments | Comments | searchable |
         And I have a Content object "A" of Content Type "B"
         And I have a comment on Content object "A" with
            | Comments.Title   | Comment title                                                          |
            | Comments.Name    | John Doe                                                               |
            | Comments.Email   | different@email.com                                                    |
            | Comments.Webiste | http://my.website.ez.no                                                |
            | Comments.Content | This is\nA\nmulti-row comment content\nwith numbers 10\n123.45 0123456 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # @NOTICE: couldn't find any positive search

    Scenario Outline: No search results on ezcomments field
       Given I have a Content Type "B" with the following fields
            | ezcomments | Comments | searchable |
         And I have a Content object "A" of Content Type "B"
         And I have a comment on Content object "A" with
            | Comments.Title   | Comment title                                                          |
            | Comments.Name    | John Doe                                                               |
            | Comments.Email   | different@email.com                                                    |
            | Comments.Webiste | http://my.website.ez.no                                                |
            | Comments.Content | This is\nA\nmulti-row comment content\nwith numbers 10\n123.45 0123456 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data            |
            | Comment title   |
            | comment         |
            | title           |
            | ment title      |
            | John Doe        |
            | JOHN            |
            | john            |
            | website         |
            | multi-row       |
            | comment content |
            | 123.45          |
            | 0123456         |

    # eZCountry
    Scenario Outline: Results return on ezcountry field
       Given I have a Content Type "B" with the following fields
            | ezcountry | Country | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Country | Norway |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data    |
            | Norway  |
            | NORWAY  |
            | norway  |
            | Norway, |
            | Norway. |

    Scenario Outline: No search results on ezcountry field
       Given I have a Content Type "B" with the following fields
            | ezcountry | Country | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Country | Norway |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data          |
            | France        |
            | Nor           |
            | way           |
            | Norway,France |

    Scenario Outline: Results return on ezcountry field with multiple choice
       Given I have a Content Type "B" with the following fields
            | ezcountry | Countries | searchable | multiple_choice |
         And I have a Content object "A" of Content Type "B" with
            | Countries | Norway | Portugal | United Kingdom |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data                           |
            | Norway,Portugal,United Kingdom |
            | norway,portugal,united kingdom |
            | NORWAY,portugal,UNITED kingdom |
            | Norway,Portugal,United         |
            | Norway.Portugal.United Kingdom |

    Scenario Outline: No search results on ezcountry field with multiple choice
       Given I have a Content Type "B" with the following fields
            | ezcountry | Countries | searchable | multiple_choice |
         And I have a Content object "A" of Content Type "B" with
            | Countries | Norway | Portugal | United Kingdom |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                             |
        # @NOTICE: searching for a specific country in a multiple country object won't return any value
            | Norway                           |
            | Norway, Portugal, United Kingdom |
            | Norway .Portugal .United Kingdom |
            | United                           |
            | United Kingdom                   |
            | Norway,                          |
            | Norway.                          |
            | France                           |

    # ezdate
    Scenario Outline: Results return on ezdate field
       Given I have a Content Type "B" with the following fields
            | ezdate | Date | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Date | 24/01/2013 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # @NOTICE: couldn't find any positive search

    Scenario Outline: No search results on ezdate field
       Given I have a Content Type "B" with the following fields
            | ezdate | Date | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Date | 24/01/2013 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data            |
            | 24/01/2013      |
            | 24-01-2013      |
            | 24-01/2013      |
            | 24,01,2013      |
            | 2013/01/24      |
            | 2013/01-24      |
            | 24 jan 2013     |
            | 24 January 2013 |
            | jan             |
            | january         |
            | 2013            |
            | 24/01           |
            | 01-24           |

