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
    Scenario Outline: Restults returned on ezstring field search
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

    Scenario Outline: No search results on ezstring field search
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
    Scenario Outline: Results returned on ezauthor field search
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
            | @#$>john<£§%       |
        # @NOTICE: it accepts a non existing email
            | john@ez.no         |
            | john@admin         |

    Scenario Outline: No search results on ezauthor field search
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

    # eZCountry
    Scenario Outline: Results returned on ezcountry field search
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

    Scenario Outline: No search results on ezcountry field search
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

    Scenario Outline: Results returned on ezcountry field search with multiple choice
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

    Scenario Outline: No search results on ezcountry field search with multiple choice
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
    Scenario Outline: Results returned on ezdate field search
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

    Scenario Outline: No search results on ezdate field search
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
    Scenario Outline: Results returned on ezdatetime field search
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

    Scenario Outline: No search results on ezdatetime field search
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
    Scenario Outline: Results returned on ezemail field search
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

    Scenario Outline: No search results on ezemail field search
       Given I have a Content Type "B" with the following fields
            | ezemail | eMail | searchable |
         And I have a Content object "A" of Content Type "B" with
            | eMail | example_123.test@ez.no |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data      |
            | examples  |
            | examples_ |
            | 123       |
            | _123      |
            | 123.test@ |
            | test@ez   |
            | st@ez.no  |

    # eZGMapLocation
    Scenario Outline: Results returned on ezgmaplocation field search
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

    Scenario Outline: No search results on ezgmaplocation field search
       Given I have a Content Type "B" with the following fields
            | ezgmaplocation | MapLocation | searchable |
         And I have a Content object "A" of Content Type "B" with
            | MapLocation | 59.91,10.75 | Olso, Norway |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data         |
            | Norway       |
            | 59.91        |
            | 10.75        |
            | 59.91,10.75  |
            | Olso, Norway |
        # search for another location
            | Lisbon       |
            | Portugal     |
            | 38.72        |
            | -9.15        |
            | 38.72,-9.15  |

    # eZInteger
    Scenario Outline: Results returned on ezinteger field search
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

    Scenario Outline: No search results on ezinteger field search
       Given I have a Content Type "B" with the following fields
            | ezinteger | Integer | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Integer | 123456 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data          |
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
    Scenario Outline: Results returned on ezkeyword field search
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

    Scenario Outline: No search results on ezkeywords field search
       Given I have a Content Type "B" with the following fields
            | ezkeyword | Keywords | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Keywords | keyword1, keyword2, example, another, a, 1, a1 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data            |
            | keyword         |
            | 1a              |
            | word1           |
            | key&word        |
        # @Notice: if there is no space the object isn't returned
            | example,another |

    # eZSelection
    Scenario Outline: Results returned on ezselection field search
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

    Scenario Outline: No search results on ezselection field search
       Given I have a Content Type "B" with the following fields
            | ezselection | Selection | searchable | option #1 | another option | 6#4% Special 1.2 |
         And I have a Content object "A" of Content Type "B" with
            | Selection | 6#4% Special 1.2 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data              |
            | special,option    |
            | another           |
            | 6#4%Special1.2    |
            | 6#4%_Special_1.2  |
            | 64                |
        # Notice: the difference from this to the one that do match is the missing '%' at the end
            | 6@£§$%4         

    # eZSelection (multiple choice)
    Scenario Outline: Results returned on ezselection field with multiple choice search
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

    Scenario Outline: No search results on ezselection field with multiple choice search
       Given I have a Content Type "B" with the following fields
            | ezselection | Selection | searchable | option #1 | another option | 6#4% Special 1.2 |
         And I have a Content object "A" of Content Type "B" with
            | Selection | option #1 | 6#4% Special 1.2 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                       |
            | special,option             |
            | another                    |
            | 6#4%Special1.2,option#1    |
            | 6#4%_Special_1.2,option_#1 |
            | 64                         |
        # Notice: the difference from this to the one that do match is the missing '%' at the end
            | 6@£§$%4                    |

    # eZSrRating
    Scenario Outline:  Results returned on ezsrrating field search
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

    Scenario Outline: No search results on ezsrrating field search
       Given I have a Content Type "B" with the following fields
            | ezsrrating | StarRating | searchable |
         And I have a Content object "A" of Content Type "B"
         And I have an average "4.5" stars with "20" votes on Content object "A"
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data      |
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
    Scenario Outline: Results returned on eztext field search
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

    Scenario Outline: No search results on eztext field search
       Given I have a Content Type "B" with the following fields
            | eztext | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | text_block: this\nis a\ntext block\n\nand It has numbers\n10\n1120\n10 2 3 50\n123.45\n123-456\n123---456 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data      |
            | 123.456   |
            | this\nis  |
            | .45       |

    # eZUser
    Scenario Outline: Results returned on ezuser field search
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

    Scenario Outline: No search results on ezuser field search
       Given I have a Content Type "B" with the following fields
            | ezuser | User | searchable |
         And I have a Content object "A" of Content Type "B" with
            | User | 150 | user name | password1 | example@ez.no |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data |
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
    Scenario Outline: Results returned on ezxmltext field search
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

    Scenario Outline: No search results on ezxmltext field search
       Given I have a Content Type "B" with the following fields
            | ezxmltext | Text | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Text | <section><paragraph>this is normal text 1 12 456 7890</paragraph><anchor name="i got the lit.eral" /><literal>now i'm in lit-e-ral text</literal></section><paragraph><link view="full" title="omg a mail" id="010" href="mailto:example@ez.no">example@ez.no</link><br/><link title="ezpublish site" id="040" href="http://ezpublish.no">this is a link</link><br/><custom name="factbox" custom:title="factbox" custom:align="right">this is a box a fact box</custom><br/><ol><li>an ordered list</li><li>line 2</li><li>line 3</li></ol></paragraph><paragraph>superscript<custom name="sup">5</custom><br/>subscript<custom name="sub">6</custom></paragraph><paragraph><strong>bold</strong><br/><custom name="underline">underline</custom><br/><emphasize>italic</emphasize><br/></paragraph><table class="comparison" border="0" width="100%" custom:summary="comparing something" custom:caption="capiton or my mistake"><tr><td>title the first</td><td>topic the second</td></tr><tr><td>resut third</td><td>answer fourth</td></tr></table> |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data                  |
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

    # @Notice: Binary Base tree search not implemented on LS
    # eZBinaryFile
    Scenario Outline: Results returned on ezbinaryfield field search
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

    Scenario Outline: No search results on ezbinaryfield field search
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
    Scenario Outline: Results returned on ezmedia field search
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | media | file:sneezing_panda.mp4 | 730.4kb | 400x300 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # need details

    Scenario Outline: No search results on ezbinaryfield field search
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | media | file:sneezing_panda.mp4 | 730.4kb | 400x300 |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data |
    # need details

    # eZImage
    Scenario Outline: Results returned on ezimage field search
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | media | file:test.jpg | 60.9kb | 312x312 |
        When I search for "<data>"
        Then I see "1" search results
         And I see Content object "A"
        
        Examples:
            | data |
        # need details

    Scenario Outline: No search results on ezimage field search
       Given I have a Content Type "B" with the following fields
            | ezmedia | Media | searchable |
         And I have a Content object "A" of Content Type "B" with
            | media | file:test.jpg | 60.9kb | 312x312 |
        When I search for "<data>"
        Then I see "0" search results

        Examples:
            | data |
        # need details

    # eZObjectRelation
    Scenario Outline: Results returned on ezobjectrelation field search
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "C" of Content Type "D" with
            | ezstring | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
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

    Scenario Outline: No search results on ezobjectrelation field search
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | searchable |
         And I have a Content object "C" of Content Type "D" with
            | ezstring | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
         And I have a Content Type "B" with the following fields
            | ezobjectrelation | Relation | searchable |
         And I have a Content object "A" of Content Type "B" with
            | Relation | C |
        When I search for "<data>"
        Then I see "0" search results
        
        Examples:
            | data         |
            | data         |
            | fiel         | 
            | couple       |
            | has a Couple | 
            | ten          | 
            | 100          | 
            | 10256        | 
            | 456789       | 
            | 123          |
            | .45          |
            | $            |
            | $&%          |

    Scenario Outline: : No results returned on ezobjectrelation field search when related object is non searchable
       Given I have a Content Type "D" with the following fields
            | ezstring | Text | not_searchable |
         And I have a Content object "C" of Content Type "D" with
            | ezstring | This field has a CoupleOfWords and some numbers 10 256 0123456879 123.45$&% an example@ez.no |
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



# @TODO: go deep into content types and field types
#       - (not) searchable

# @TODO: test metadata search

# @TODO: test multiple results

# @TODO: test archived, draft and trashed versions

# @TODO: go to advanced search

# @TODO: permissions ( sections, version read, etc... )

