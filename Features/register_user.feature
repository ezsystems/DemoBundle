Feature: Register user
    In order to register a new user
    As an anonymous user
    I need to be able to register

    @javascript
    Scenario: Open register user page
       Given I am at "home" page
        When I click at "Register" link
        Then I see "register user" page

    @javascript
    Scenario: Register user needs cookies enabled to work
       Given I am at "home" page
         And I got "cookies" disabled
        When I click at "Register" link
        Then I see "register user" page
         And I see "Your browser does not seem to support cookies, to register a new user, cookies need to be supported and enabled!" error

    @javascript
    Scenario: Register a new user
        # @TODO: find a way to verify that registered data is correctly stored
       Given I am at "home" page
         And I click at "Register" link
        When I fill a valid "register" form
         And I click at "Register" button
        Then I see "user created" page
         And I see "Your account was successfully created" message

    @javascript
    Scenario Outline: Attempt to register a new user with an existing unique field
       Given I am at "home" page
         And I click at "Register" link
         And I have an User with
            # field         | value      |
            | account_login | user       |
            | account_email | mail@ez.no |
        When I fill "register" form with
            # field           |
            | <account_login> |
            | <account_email> |
         And I click at "Register" button
        Then I see "Input did not validate" error
         And I see "field already exists" error

        Examples:
            | account_login | account_email |
            | user          | new@ez.no     |
            | another       | mail@ez.no    |

    @javascript
    Scenario: Attempt to register a new user with different password and confirm password
       Given I am at "home" page
         And I click at "Register" link
        When I fill "register" form with
            # field                    | value |
            | account_password         | cod1  |
            | account_password_confirm | cod2  |
         And I click at "Register" button
        Then I see "Input did not validate" error
         And I see "The passwords do not match" error

    @javascript
    Scenario Outline: Attempt to register a new user without filling all required fields
       Given I am at "home" page
         And I click at "Register" link
        When I fill form with only
            # field                      |
            | <first_name>               |
            | <last_name>                |
            | <account_login>            |
            | <account_email>            |
            | <account_password>         |
            | <account_password_confirm> |
         And I click at "Register" button
        Then I see "Input did not validate" error
         And I see "<error_message>" error

        Examples:
            | first_name | last_name | account_login | account_email | account_password | account_password_confirm | error_message                  |
            |            | Last      | user          | mail@ez.no    | cod1             | cod1                     | Input required                 |
            | First      |           | user          | mail@ez.no    | cod1             | cod1                     | Input required                 |
            | First      | Last      |               | mail@ez.no    | cod1             | cod1                     | The username must be specified |
            | First      | Last      | user          |               | cod1             | cod1                     | The email address is not valid |
            | First      | Last      | user          | mail@ez.no    | cod1             |                          | The passwords do not match     |

    @javascript
    Scenario: Discard the register new user form
       Given I am at "home" page
         And I click at "Register" link
        When I click at "Discard" button
        Then I see "home" page

    @javascript
    Scenario: Register a new user with an image
        # @TODO: think how "attach image" could be achieved
       Given I am at "home" page
         And I click at "Register" link
        When I fill a valid "register" form
         And I attach an image
         And I click at "Register" button
        Then I see "user created" page

    @javascript
    Scenario Outline: Register new user with valid data in fields
       Given I am at "home" page
         And I click at "Register" link
        When I fill "register" form with
            # field              |
            | <first_name>       |
            | <last_name>        |
            | <account_login>    |
            | <account_email>    |
            | <account_password> |
         And I click at "Register" button
        Then I see "user created" page

        Examples:
# Find a way to test password valid data without the need to fill confirmation password in the examples table
            | first_name                                                      | last_name                                                       | account_login                                                            | account_email                                                     | account_password                                                                                                                                                                                                                                                                                                     |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First Second                                                    | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | CamelCase                                                       | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | lowercase                                                       | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | UPPERCASE                                                       | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | Min                                                             | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | This Is A Really Big Name With Lots of Characters And Spaces    | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | email@example.com                                               | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | 0123456789                                                      | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | <>!#$%&/()=?«»'{}[]'`^~*+ºª-_.:,;<>@ł€¶ŧ←↓→øþĸħŋđðßæ«»¢“”nµ     | Last                                                            | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Third Last                                                      | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | CamelCase                                                       | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | lowercase                                                       | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | UPPERCASE                                                       | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Min                                                             | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | This Is A Really Big Name With Lots of Characters And Spaces    | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | 0123456789                                                      | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | <>!#$%&/()=?«»'{}[]'`^~*+ºª-_.:,;<>@ł€¶ŧ←↓→øþĸħŋđðßæ«»¢“”nµ     | user                                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | a                                                                        | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | 1                                                                        | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | this_is_a_really_big_username_that_has_underscores_and_numers_1234567890 | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | USERINCAPS                                                               | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | CamelCase                                                                | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | username with spaces                                                     | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | 0123456789                                                               | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | <>!#$%&/()=?«»'{}[]'`^~*+ºª-_.:,;<>@ł€¶ŧ←↓→øþĸħŋđðßæ«»¢“”nµ              | mail@ez.no                                                        | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | CamelCase@ez.no                                                   | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | lowercase@ez.no                                                   | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | UPPERCASE@ez.no                                                   | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | a@b.cd                                                            | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | 1@2.cd                                                            | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | !#~^`+*-_{}|'/%$@ez.no                                            | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | underscore_@ez.no                                                 | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | _underscore@ez.no                                                 | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | using.dot.s@ez.no                                                 | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | this.Is.A.Really.Huge.Email@With.A.Completely.Bigger.Host.Name.no | cod1                                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | a                                                                                                                                                                                                                                                                                                                    |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | 1                                                                                                                                                                                                                                                                                                                    |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | CamelCase                                                                                                                                                                                                                                                                                                            |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | lowercase                                                                                                                                                                                                                                                                                                            |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | UPPERCASE                                                                                                                                                                                                                                                                                                            |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | password with spaces                                                                                                                                                                                                                                                                                                 |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | 0123456789                                                                                                                                                                                                                                                                                                           |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | <>!#$%&/()=?«»'{}[]'`^~*+ºª-_.:,;<>@ł€¶ŧ←↓→øþĸħŋđðßæ«»¢“”nµ                                                                                                                                                                                                                                                          |
            | First                                                           | Last                                                            | user                                                                     | mail@ez.no                                                        | thisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKeythisIsA300CharacterKey |

    @javascript
    Scenario Outline: Attempt to register new user with invalid data in fields
       Given I am at "home" page
         And I click at "Register" link
        When I fill "register" form with
            # field              |
            | <first_name>       |
            | <last_name>        |
            | <account_login>    |
            | <account_email>    |
            | <account_password> |
         And I click at "Register" button
        Then I see "Input did not validate" error
         And I see "The <field> is not valid" error

        Examples:
            | first_name | last_name | account_login | account_email           | account_password | field         |
            | First      | Last      | user          | end.dot.@ez.no          | cod1             | email address |
            | First      | Last      | user          | .start.dot@ez.no        | cod1             | email address |
            | First      | Last      | user          | æßðđŋ@ez.no             | cod1             | email address |
            | First      | Last      | user          | ãéìöû@ez.no             | cod1             | email address |
            | First      | Last      | user          | with spaces @ez.no      | cod1             | email address |
            | First      | Last      | user          | underscore@at_host.name | cod1             | email address |
            | First      | Last      | user          | a@b.c                   | cod1             | email address |
            | First      | Last      | user          | 1@2.34                  | cod1             | email address |
            | First      | Last      | user          | mail@single             | cod1             | email address |

    @javascript
    Scenario: Remove image from a register User Draft
       Given I am at "home" page
         And I click at "Register" link
         And I have an register User Draft "Z" with
            # field | value |
            | image | A     |
        When I click at "Remove Image" button
        Then I don't see image "A"
         And I don't see "Edit" button
         And I see "Remove image" button with attributes
            # attribute | value    |
            | disabled  | disabled |

    @javascript
    Scenario: Change uploaded image on a register User Draft
       Given I am at "home" page
         And I click at "Register" link
         And I have an register User Draft "Z" with
            # field | value |
            | image | A     |
        When I attach an image "B" to "image"
         And I click at "Register" button
        Then I see image "B"
         And I don't see image "A"

    @javascript
    Scenario: Registering data (Draft) is kept till discard
       Given I am at "home" page
         And I have an register User Draft "A"
        When I click at "Register" link
        Then I see form filled with data "A"

    @javascript
    Scenario: Register doesn't loose invalid data
       Given I am at "home" page
         And I click at "Register" link
        When I fill form with only
            # field         | value         |
            | account_email | invalid email |
         And I click at "Register" button
        Then I see "Input did not validate" error
         And I see form filled with
            # field         | value         |
            | account_email | invalid email |

    @javascript
    Scenario: Search field is disabled when registering
       Given I am at "home" page
        When I click at "Register" link
        Then I see "search" input "disabled"