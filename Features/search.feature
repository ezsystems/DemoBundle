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
    Scenario Outline: Finding Content object with a eZString field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
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

    Scenario Outline: Attempt to find a Content object with a eZString field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
        When I search for "<data>"
        Then I see "0" search results

        Examples:
            | data         |
            | ezstring     |
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
    Scenario Outline: Finding Content object with a eZAuthor field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezauthor | Author | searchable |
         And I have a Content object "A" of Content Type "B" with
            # Field  |row| Name          | email        |
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
            | @#$>john<£§%       |
        # @NOTICE: it accepts a non existing email
            | john@ez.no         |
            | john@admin         |

    Scenario Outline: Attempt to find a Content object with a eZAuthor field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezauthor | Author | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Author | 1 | Administrator | admin@ez.no  |
            | Author | 2 | John Doe      | john@doe.com |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data        |
            | ezauthor    |
            | ministrator |
            | mini        |
            | hn Doe      |
            | ez.com      |

    # eZCountry
    Scenario Outline: Finding Content object with a eZCountry field that matches the search phrase
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

    Scenario Outline: Attempt to find a Content object with a eZCountry field that doesn't match the search phrase
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

    Scenario Outline: Finding Content object with a eZCountry field with multiple choice that matches the search phrase
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
            | @#$<Norway,Portugal,United>£§% |

    Scenario Outline: Attempt to find a Content object with a eZCountry field with multiple choice that doesn't match the search phrase
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

    # eZDate
    Scenario Outline: Finding Content object with a eZDate field that matches the search phrase
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

    Scenario Outline: Attempt to find a Content object with a eZDate field that doesn't match the search phrase
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
            | 1358985600      |

    # eZDateTime
    Scenario Outline: Finding Content object with a eZDateTime field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezdatetime | DateAndTime | searchable |
         And I have a Content object "A" of Content Type "B" with
            | DateAndTime | 24/01/2013 01:23 am |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # @NOTICE: couldn't find any positive search

    Scenario Outline: Attempt to find a Content object with a eZDateTime field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezdatetime | DateAndTime | searchable |
         And I have a Content object "A" of Content Type "B" with
            | DateAndTime | 24/01/2013 01:23 am |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                |
            | 24/01/2013 01:23 am |
            | 24-01-2013          |
            | 24-01/2013          |
            | 24,01,2013          |
            | 2013/01/24          |
            | 2013/01-24          |
            | 24 jan 2013         |
            | 24 January 2013     |
            | jan                 |
            | january             |
            | 2013                |
            | 24/01               |
            | 01-24               |
            | 01:23 am            |
            | 01h23m              |
            | 23m                 |
            | 1 hour              |
            | 1 hour 23 minutes   |
            | 01                  |
            | 23                  |
            | am                  |
            | 1358990580          |

    # eZEmail
    Scenario Outline: Finding Content object with a eZEmail field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezemail | eMail | searchable |
         And I have a Content object "A" of Content Type "B" with
            | eMail | example_123.test@ez.no |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data                   |
            | example_123.test@ez.no |
            | example_123.test       |
            | example_123.test@      |
            | ez.no                  |
            | @ez.no                 |
            | @#$<example>£§%        |

    Scenario Outline: Attempt to find a Content object with a eZEmail field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezemail | eMail | searchable |
         And I have a Content object "A" of Content Type "B" with
            | eMail | example_123.test@ez.no |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data      |
            | ezemail   |
            | examples  |
            | examples_ |
            | 123       |
            | _123      |
            | 123.test@ |
            | test@ez   |
            | st@ez.no  |
            | mail      |
            | mailto    |

    # eZGMapLocation
    Scenario Outline: Finding Content object with a eZGMapLocation field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezgmaplocation | MapLocation | searchable |
         And I have a Content object "A" of Content Type "B" with
            | MapLocation | 59.91,10.75 | Olso, Norway |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data         |
            | Olso         |
            | @#$<olso>£§% |

    Scenario Outline: Attempt to find a Content object with a eZGMapLocation field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezgmaplocation | MapLocation | searchable |
         And I have a Content object "A" of Content Type "B" with
            | MapLocation | 59.91,10.75 | Olso, Norway |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data           |
            | ezgmaplocation |
            | Norway         |
            | 59.91          |
            | 10.75          |
            | 59.91,10.75    |
            | Olso, Norway   |
        # search for another location
            | Lisbon         |
            | Portugal       |
            | 38.72          |
            | -9.15          |
            | 38.72,-9.15    |

    # eZInteger
    Scenario Outline: Finding Content object with a eZInteger field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezinteger | Integer | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Integer | 123456 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data           |
            | 123456         |
            | @#$<123456>£§% |

    Scenario Outline: Attempt to find a Content object with a eZInteger field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezinteger | Integer | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Integer | 123456 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data          |
            | ezinteger     |
            | 12345         |
            | 23456         |
            | 123           |
            | 456           |
            | 1             |
            | 3             |
            | 6             |
            | 123.456       |
            | 123-456       |
            | 123*456       |
            | 1.2.3.4.5.6   |
            | abcdefg       |
            | one,two,three |

    # eZKeyword
    Scenario Outline: Finding Content object with a eZKeyword field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezkeyword | Keywords | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Keywords | keyword1, keyword2, example, another, a, 1, a1 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data             |
            | keyword2         |
            | a                |
            | 1                |
            | a1               |
            | example, another |
            | a@#$>a1<£§%1     |

    Scenario Outline: Attempt to find a Content object with a eZKeyword field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezkeyword | Keywords | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Keywords | keyword1, keyword2, example, another, a, 1, a1 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data            |
            | ezkeywords      |
            | keyword         |
            | 1a              |
            | word1           |
            | key&word        |
        # @NOTICE: if there is no space the object isn't returned
            | example,another |

    # eZSelection
    Scenario Outline: Finding Content object with a eZSelection field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezselection | Selection | searchable | option #1 | another option | 6#4% Special 1.2 |
         And I have a Content object "A" of Content Type "B" with
            | Selection | 6#4% Special 1.2 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data             |
            | 6#4% Special 1.2 |
            | special          |
            | special@1.2      |
            | 6#4%             |
            | 4%               |
            | #4%              |
            | 6#1.2            |
            | 1.2              |
            | @#$>1.2<£§%      |
            | 6#@£§#$%4%       |

    Scenario Outline: Attempt to find a Content object with a eZSelection field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezselection | Selection | searchable | option #1 | another option | 6#4% Special 1.2 |
         And I have a Content object "A" of Content Type "B" with
            | Selection | 6#4% Special 1.2 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data              |
            | ezselection       |
            | special,option    |
            | another           |
            | 6#4%Special1.2    |
            | 6#4%_Special_1.2  |
            | 64                |
        # NOTICE: the difference from this to the one that do match is the missing '%' at the end
            | 6@£§$%4           |

    # eZSelection (multiple choice)
    Scenario Outline: Finding Content object with a eZSelection field with multiple choices that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezselection | Selection | searchable | option #1 | another option | 6#4% Special 1.2 |
         And I have a Content object "A" of Content Type "B" with
            | Selection | option #1 | 6#4% Special 1.2 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data             |
            | 6#4% Special 1.2 |
            | special          |
            | special@1.2      |
            | 6#4%             |
            | 4%               |
            | #4%              |
            | 1.2              |
            | @#$>1.2<£§%      |
            | #1 6#4%          |
            | 6#1.2            |
            | #1&$§6#4%        |
            | 6@£§$%4%         |
            | "special #1"     |
            | special option   |

    Scenario Outline: Attempt to find a Content object with a eZSelection field with multiple choice that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezselection | Selection | searchable | option #1 | another option | 6#4% Special 1.2 |
         And I have a Content object "A" of Content Type "B" with
            | Selection | option #1 | 6#4% Special 1.2 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                       |
            | ezselection                |
            | special,option             |
            | another                    |
            | 6#4%Special1.2,option#1    |
            | 6#4%_Special_1.2,option_#1 |
            | 64                         |
        # NOTICE: the difference from this to the one that do match is the missing '%' at the end
            | 6@£§$%4                    |

    # eZSrRating
    Scenario Outline: Finding Content object with a eZSrRating field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezsrrating | StarRating | searchable |
         And I have a Content object "A" of Content Type "B"
         And I have an average "4.5" stars with "20" votes on Content object "A"
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # @NOTICE: couldn't find any positive search

    Scenario Outline: Attempt to find a Content object with a eZSrRating field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezsrrating | StarRating | searchable |
         And I have a Content object "A" of Content Type "B"
         And I have an average "4.5" stars with "20" votes on Content object "A"
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data      |
            | ezstars   !
            | 4.5 stars |
            | 4.5       |
            | 4.5stars  |
            | stars     |
            | 20 votes  |
            | votes     |
            | 20votes   |
            | 5votes    |
            | 3.25stars |

    # eZText
    Scenario Outline: Finding Content object with a eZText field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | eztext | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | text_block: this\nis a\ntext block\n\nand It has numbers\n10\n1120\n10 2 3 50\n123.45\n123-456\n123---456 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data               |
            | Text_BLOCK         |
            | and it has         |
            | has it and         |
            | is a text          |
            | 2 10 50            |
            | 50#2$10            |
            | 123                |
            | 123&456            |
            | 123@456-50         |
            | 123---10           |
            | 123-.456           |
            | 123.45             |
            | @#$>text_block<£§% |
            | a                  |

    Scenario Outline: Attempt to find a Content object with a eZText field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | eztext | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | text_block: this\nis a\ntext block\n\nand It has numbers\n10\n1120\n10 2 3 50\n123.45\n123-456\n123---456 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data      |
            | extext    |
            | 123.456   |
            | this\nis  |
            | .45       |

    # eZUser
    Scenario Outline: Finding Content object with a eZUser field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezuser | User | searchable |
         And I have a Content object "A" of Content Type "B" with
            | User | 150 | user name | password1 | example@ez.no |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data              |
            | user name         |
            | name              |
            | example@ez.no     |
            | example@          |
            | ez.no             |
            | user@ez.no        |
            | @#$>user-name<£§% |

    Scenario Outline: Attempt to find a Content object with a eZUser field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezuser | User | searchable |
         And I have a Content object "A" of Content Type "B" with
            | User | 150 | user name | password1 | example@ez.no |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data      |
            | ezuser    |
            | 150       |
            | password1 |
            | username  |
            | user,name |

    # eZXmlText
    # For the following tests the XML field is filled with the next XML:
    #
    #    <section>
    #        <paragraph>this is normal text 1 12 456 7890</paragraph>
    #        <anchor name="i got the lit.eral" />
    #        <literal>now i'm in lit-e-ral text</literal>
    #    </section>
    #    <paragraph>
    #        <link view="full" title="omg a mail" id="010" href="mailto:example@ez.no">example@ez.no</link>
    #        <br/>
    #        <link title="ezpublish site" id="040" href="http://ezpublish.no">this is a link</link>
    #        <br/>
    #        <custom name="factbox" custom:title="factbox" custom:align="right">this is a box a fact box</custom>
    #        <br/>
    #        <ol>
    #            <li>an ordered list</li>
    #            <li>line 2</li>
    #            <li>line 3</li>
    #        </ol>
    #    </paragraph>
    #    <paragraph>
    #        superscript<custom name="sup">5</custom>
    #        <br/>
    #        subscript<custom name="sub">6</custom>
    #    </paragraph>
    #    <paragraph>
    #        <strong>bold</strong>
    #        <br/>
    #        <custom name="underline">underline</custom>
    #        <br/>
    #        <emphasize>italic</emphasize>
    #        <br/>
    #    </paragraph>
    #    <table class="comparison" border="0" width="100%" custom:summary="comparing something" custom:caption="capiton or my mistake">
    #        <tr>
    #            <td>title the first</td>
    #            <td>topic the second</td>
    #        </tr>
    #        <tr>
    #            <td>resut third</td>
    #            <td>answer fourth</td>
    #        </tr>
    #    </table>
    Scenario Outline: Finding Content object with a eZXmlText field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezxmltext | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | <section><paragraph>this is normal text 1 12 456 7890</paragraph><anchor name="i got the lit.eral" /><literal>now i'm in lit-e-ral text</literal></section><paragraph><link view="full" title="omg a mail" id="010" href="mailto:example@ez.no">example@ez.no</link><br/><link title="ezpublish site" id="040" href="http://ezpublish.no">this is a link</link><br/><custom name="factbox" custom:title="factbox" custom:align="right">this is a box a fact box</custom><br/><ol><li>an ordered list</li><li>line 2</li><li>line 3</li></ol></paragraph><paragraph>superscript<custom name="sup">5</custom><br/>subscript<custom name="sub">6</custom></paragraph><paragraph><strong>bold</strong><br/><custom name="underline">underline</custom><br/><emphasize>italic</emphasize><br/></paragraph><table class="comparison" border="0" width="100%" custom:summary="comparing something" custom:caption="capiton or my mistake"><tr><td>title the first</td><td>topic the second</td></tr><tr><td>resut third</td><td>answer fourth</td></tr></table> |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data                |
            | subscript           |
            | normal text is this |
            | 12 456              |
            | 1-7890              |
            | lit-e-ral           |
            | li@nk               |
        # subscript number
            | 6                   |
        # ordered list 
            | 3. line 3           |
            | line 3              |
        # table contents
            | third               |
            | answer first        |
        # custom
            | box                 |
            | fact-box            |
            | underline           |
            | italic              |
            | bold                |
        # email
            | example             |
            | example@            |
            | example@ez.no       |
            | @ez.no              |
            | ez.no               |

    Scenario Outline: Attempt to find a Content object with a eZXmlText field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezxmltext | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | <section><paragraph>this is normal text 1 12 456 7890</paragraph><anchor name="i got the lit.eral" /><literal>now i'm in lit-e-ral text</literal></section><paragraph><link view="full" title="omg a mail" id="010" href="mailto:example@ez.no">example@ez.no</link><br/><link title="ezpublish site" id="040" href="http://ezpublish.no">this is a link</link><br/><custom name="factbox" custom:title="factbox" custom:align="right">this is a box a fact box</custom><br/><ol><li>an ordered list</li><li>line 2</li><li>line 3</li></ol></paragraph><paragraph>superscript<custom name="sup">5</custom><br/>subscript<custom name="sub">6</custom></paragraph><paragraph><strong>bold</strong><br/><custom name="underline">underline</custom><br/><emphasize>italic</emphasize><br/></paragraph><table class="comparison" border="0" width="100%" custom:summary="comparing something" custom:caption="capiton or my mistake"><tr><td>title the first</td><td>topic the second</td></tr><tr><td>resut third</td><td>answer fourth</td></tr></table> |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                  |
            | ezxmltext             |
            | superscript5          |
            | subscript6            |
        # search for XML tags
            | literal               |
            | factbox               |
            | paragraph             |
            | anchor                |
            | table                 |
            | strong                |
            | <strong>bold</strong> |
            | custom                |
            | br                    |
            | <br/>                 |
        # search for tag attributes and values
            | i got the             |
            | mailto                |
            | id="040"              |
            | 040                   |
            | omg this is a mail    |
            | width                 |

    # @NOTICE: Binary Base tree search not implemented on LS
    # eZBinaryFile
    Scenario Outline: Finding Content object with a eZBinaryFile field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezbinaryfield | File | searchable |
         And I have a Content object "A" of Content Type "B" with
            | File | file:example2.tar.gz | 51.2kb |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # need details

    Scenario Outline: Attempt to find a Content object with a eZBinaryFile field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezbinaryfield | File | searchable |
         And I have a Content object "A" of Content Type "B" with
            | File | file:example2.tar.gz | 51.2kb |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data |
    # need details

    # eZMedia
    Scenario Outline: Finding Content object with a eZMedia field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Media | file:sneezing_panda.mp4 | 730.4kb | 400x300 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data    |
            | ezmedia |
        # need details

    Scenario Outline: Attempt to find a Content object with a eZMedia field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Media | file:sneezing_panda.mp4 | 730.4kb | 400x300 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data          |
            | ezbinaryfield |
    # need details

    # eZImage
    Scenario Outline: Finding Content object with a eZImage field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Media | file:test.jpg | 60.9kb | 312x312 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # need details

    Scenario Outline: Attempt to find a Content object with a eZImage field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Media | file:test.jpg | 60.9kb | 312x312 |
        When I search for "<data>"
        Then I see "0" search results

        Examples:
            | data    |
            | ezimage |
        # need details

    # eZObjectRelation
    Scenario Outline: Finding Content object which has a eZObjectRelation to a Content object matching the search phrase
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "C" of Content Type "D" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "B" with the following fields
            | ezobjectrelation | Relation | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Relation | C |
        When I search for "<data>"
        Then I see "2" search results
         And I see Content object "A"
         And I see Content object "C"
        
        Examples:
            | data             |
            | Field            |
            | FIELD            |
            | 10 256           |
            | coupleofwords    |
            | and some numbers |
            | 0123456789       |
            | 123.45           |
            | 123.45$          |
            | 123.45$&%        |
            | ez.no            |
            | @ez.no           |
            | example          |
            | example@         |
            | example@ez.no    |

    Scenario Outline: Attempting to find a Content object which has a eZObjectRelation to a Content object not matching the search phrase
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "C" of Content Type "D" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "B" with the following fields
            | ezobjectrelation | Relation | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Relation | C |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data              |
            | ezstring          |
            | ezobjectrelation  |
            | data              |
            | fiel              | 
            | couple            |
            | has a Couple      | 
            | ten               |
            | 100               | 
            | 10256             | 
            | 456789            | 
            | 123               |
            | .45               |
            | $                 |
            | $&%               |

    Scenario Outline: Attempting to find a Content object which has a eZObjectRelation to a Content object that their fields are not searcheable
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | not_searchable |
         And I have a Content object "C" of Content Type "D" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "B" with the following fields
            | ezobjectrelation | Relation | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Relation | C |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data             |
            | Field            |
            | FIELD            |
            | 10 256           |
            | coupleofwords    |
            | and some numbers |
            | 0123456789       |
            | 123.45           |
            | 123.45$          |
            | has a Couple     | 
            | ten              | 
            | 100              | 
            | @ez.no           |
            | example          |
            | example@         |
            | example@ez.no    |

    # eZObjectRelationList
    Scenario Outline: Finding Content object which has a eZObjectRelationList to Content objects matching the search phrase
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "C" of Content Type "D" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "F" with the following fields
            | ezkeyword | Keywords | searchable |
         And I have a Content object "E" of Content Type "F" with
            | Keywords | keyword1, 10, example, another, a, 1, a1 |
         And I have a Content Type "B" with the following fields
            | ezobjectrelationlist | RelationList | searchable |
         And I have a Content object "A" of Content Type "B" with
            | RelationList | C | E |
        When I search for "<data>"
        Then I see "3" search results
         And I see Content object "A"
         And I see Content object "C"
         And I see Content object "D"
        
        Examples:
            | data    |
            | example |
            | 10      |

    Scenario Outline: Attempting to find a Content object which has a eZObjectRelationList to Content objects not matching the search phrase
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "C" of Content Type "D" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "F" with the following fields
            | ezkeyword | Keywords | searchable |
         And I have a Content object "E" of Content Type "F" with
            | Keywords | keyword1, 10, example, another, a, 1, a1 |
         And I have a Content Type "B" with the following fields
            | ezobjectrelationlist | RelationList | searchable |
         And I have a Content object "A" of Content Type "B" with
            | RelationList | C | E |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                 |
            | ezobjectrelationlist |
            | 10256                |
            | couple of key words  |
            | example not found    |
            | 10 search            |


    Scenario Outline: Finding Content object which has a eZObjectRelationList to Content objects where only one matches the search phrase
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "C" of Content Type "D" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "F" with the following fields
            | ezkeyword | Keywords | searchable |
         And I have a Content object "E" of Content Type "F" with
            | Keywords | keyword1, 10, example, another, a, 1, a1 |
         And I have a Content Type "B" with the following fields
            | ezobjectrelationlist | RelationList | searchable |
         And I have a Content object "A" of Content Type "B" with
            | RelationList | C | E |
        When I search for "<data>"
        Then I see "2" search results
         And I see Content object "A"
         And I see Content object "<object>"
        
        Examples:
            | data              | object |
            | 0123456789        | C      |
            | example some      | C      |
            | field 10          | C      |
            | 10 256            | C      |
            | coupleofwords     | C      |
            | and some numbers  | C      |
            | 0123456789        | C      |
            | 123.45            | C      |
            | 123.45$           | C      |
            | 123.45$&%         | C      |
            | keyword2          | E      |
            | a                 | E      |
            | 1                 | E      |
            | a1                | E      |
            | example, another  | E      |
            | a@#$>a1<£§%1      | E      |


    Scenario Outline: Attempting to find a Content object which has a eZObjectRelationList to Content objects that their fields are not searcheable
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | not_searchable |
         And I have a Content object "C" of Content Type "D" with
            | Text | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "F" with the following fields
            | ezkeyword | Keywords | not_searchable |
         And I have a Content object "E" of Content Type "F" with
            | Keywords | keyword1, 10, example, another, a, 1, a1 |
         And I have a Content Type "B" with the following fields
            | ezobjectrelationlist | RelationList | searchable |
         And I have a Content object "A" of Content Type "B" with
            | RelationList | C | E |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                |
            | 10256               |
            | couple of key words |
            | example not found   |
            | 10 search           |
            | coupleofwords       |
            | and some numbers    |
            | 0123456789          |
            | 123.45              |
            | 123.45$             |
            | has a Couple        |
            | a                   |
            | 1                   |
            | a1                  |
            | example, another    |
            | a@#$>a1<£§%1        |

    # LS Identifier
    Scenario Outline: Finding Content object with a Identifier field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | identifier | Identifier | searchable | pre[id]post | startValue:10 | digits:3 |
         And I have a Content object "A" of Content Type "B"
            # Identifier = pre010post
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data       |
            | pre010post |

    Scenario Outline: Attempt to find a Content object with a Identifier field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | identifier | Identifier | searchable | pre[id]post | startValue:10 | digits:3 |
         And I have a Content object "A" of Content Type "B"
            # Identifier = pre010post
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data         |
            | identifier   |
            | pre          |
            | pre010       |
            | 010          |
            | 010post      |
            | 10           |
            | 01           |
            | pre post     |
            | pre 010 post |
            | pre.010.post |
            | pre-010-post |

    # LS ISBN
    Scenario Outline: Finding Content object with a ISBN field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | isbn | ISBN | searchable |
         And I have a Content object "A" of Content Type "B" with
            | ISBN | 19-0481-164-7 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"

        Examples:
            | data            |
            | 19              |
            | 0481            |
            | 164             |
            | 7               |
            | 19-0481-164-7   |
            | >19#0481$164§7< |
            | 164-7-19-0481   |
            | 7 164 19        |

    Scenario Outline: Attempt to find a Content object with a ISBN field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | isbn | ISBN | searchable |
         And I have a Content object "A" of Content Type "B" with
            | ISBN | 19-0481-164-7 |
        When I search for "<data>"
        Then I see "0" search results

        Examples:
            | data       |
            | isbn       |
            | 1904811647 |
            | 190481     |
            | 0481164    |
            | 1647       |
            | 1647190481 |

    # LS Matrix
    # For the following tests the Matrix field is filled with the next matrix:
    #
    # 
    #   +---------------------+-----------------+
    #   | row 1 column 1 - 11 |  following - 12 |
    #   +---------------------+-----------------+
    #   | bottom - 21         | end - 22        |
    #   +---------------------+-----------------+
    Scenario Outline: Finding Content object with a Matrix field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | matrix | Matrix | searcheable |
         And I have a Content object "A" of Content Type "B" with
            # Field  |row| column 1            | column 2       |
            | Matrix | 1 | row 1 column 1 - 11 | following - 12 |
            | Matrix | 1 | bottom - 21         | end - 22       |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"

        Examples:
            | data                      |
            | row following bottom end  |
            | column                    |
            | 11 12 21 22               |
            | column 1-22               |
            | row 22 column 22          |
            | 1#1                       |
            | row@1 column&22           |
            | end @ 22                  |

    Scenario Outline: Attempt to find a Content object with a Matrix field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | matrix | Matrix | searcheable |
         And I have a Content object "A" of Content Type "B" with
            # Field  |row| column 1            | column 2       |
            | Matrix | 1 | row 1 column 1 - 11 | following - 12 |
            | Matrix | 1 | bottom - 21         | end - 22       |
        When I search for "<data>"
        Then I see "0" search results

        Examples:
            | data            |
            | matrix          |
            | -               |
            | 1,1             |
            | row_1           |
            | 2               |
            | row 2           |

    # LS Multi-Option2
    # For the following tests the multi-option2 field is filled with the next multi-options:
    #
    #  1. Parts
    #   +------------------+------------------+
    #   | option           |  adicional price |
    #   +------------------+------------------+
    #   | Head             | 0                | Default
    #   +------------------+------------------+
    #   | Head+hands       | 12               |
    #   +------------------+------------------+
    #       1.1. Adicional options
    #       +------------------+------------------+
    #       | option           |  adicional price |
    #       +------------------+------------------+
    #       | Heads up         | 15               |
    #       +------------------+------------------+
    #       | Complete         | 20               |
    #       +------------------+------------------+
    #  2. Feet
    #   +------------------+------------------+
    #   | option           |  adicional price |
    #   +------------------+------------------+
    #   | None             | 0                |
    #   +------------------+------------------+
    #   | Nails Standard   | 5                | Default
    #   +------------------+------------------+
    #   | Nails Special    | 8                |
    #   +------------------+------------------+
    Scenario Outline: Finding Content object with a Multi-Option2 field that matches the search phrase
       Given I have a Content Type "B" with the following fields
            | multi-option2 | MultiOption | searcheable |
         And I have a Content object "A" of Content Type "B" with
            # Field       |table| name              |row| option         |Price| Default |
            | MultiOption | 1   | Parts             | 1 | Head           |  0  | default |
            | MultiOption | 1   |                   | 2 | Head+hands     |  12 |         |
            | MultiOption | 1.1 | Adicional options | 1 | Heads up       |  15 |         |
            | MultiOption | 1.1 |                   | 2 | Complete       |  20 |         |
            | MultiOption | 2   | Feet              | 1 | None           |  0  |         |
            | MultiOption | 2   |                   | 2 | Nails Standard |  5  | default |
            | MultiOption | 2   |                   | 3 | Nails Special  |  8  |         |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"

        Examples:
            | data              |
            | 12                |
            | 20                |
            | 0 12 5            |
            | None nails        |
            | complete#special  |
            | feet              |
            | Adicional         |
            | options           |
            | Head+hands        |
            | Head+COMPLETE     |

    Scenario Outline: Attempt to find a Content object with a Multi-Option2 field that doesn't match the search phrase
       Given I have a Content Type "B" with the following fields
            | multi-option2 | MultiOption | searcheable |
         And I have a Content object "A" of Content Type "B" with
            # Field       |table| name              |row| option         |Price| Default |
            | MultiOption | 1   | Parts             | 1 | Head           |  0  | default |
            | MultiOption | 1   |                   | 2 | Head+hands     |  12 |         |
            | MultiOption | 1.1 | Adicional options | 1 | Heads up       |  15 |         |
            | MultiOption | 1.1 |                   | 2 | Complete       |  20 |         |
            | MultiOption | 2   | Feet              | 1 | None           |  0  |         |
            | MultiOption | 2   |                   | 2 | Nails Standard |  5  | default |
            | MultiOption | 2   |                   | 3 | Nails Special  |  8  |         |
        When I search for "<data>"
        Then I see "0" search results

        Examples:
            | data          |
            | +             |
            | multi option  |
            | adi none      |
            | none stop     |
            | default       |

    # LS Product-Category
    Scenario Outline: Finding Content object with a Product-Category field that matches the search phrase
       Given I have "webshop" active with
            | product category | Food | Pets | Cloth |
         And I have a Content Type "B" with the following fields
            | product-category | ProductCategory | searcheable |
         And I have a Content object "A" of Content Type "B" with
            | ProductCategory | Pets |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # @NOTICE: couldn't find any positive search

    Scenario Outline: Attempt to find a Content object with a Product-Category field that doesn't match the search phrase
       Given I have "webshop" active with
            | product category | Food | Pets | Cloth |
         And I have a Content Type "B" with the following fields
            | product-category | ProductCategory | searcheable |
         And I have a Content object "A" of Content Type "B" with
            | ProductCategory | Pets |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data     |
            | Food     |
            | pets     |
            | CLOTH    |
            | prod     |
            | product  |
            | category |


# @TODO: go deep into content types and field types
#       - (not) searchable

# @TODO: test metadata search

# @TODO: test multiple results

# @TODO: test archived, draft and trashed versions

# @TODO: go to advanced search

# @TODO: permissions ( sections, version read, etc... )

