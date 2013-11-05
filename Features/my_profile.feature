Feature: My profile
    In order to access and edit my profile information
    As administrator user
    I need to be able to read and edit profile information

    ###
    # The javascript login test is already done in start_page.feature, so it
    # wont be tested here
    ###

    @javascript
    Scenario: Open my profile page
       Given I am logged in as "admin" with password "publish"
        When I click at "My profile" link
        Then I see "My profile" page

    Scenario: See main User information
       Given I am logged in as "admin" with password "publish"
        When I go to "My profile" page
        Then I see key "Username" with value "admin"
         And I see key "Email" with value "admin@ez.no"
         And I see key "Name" with value "Administrator User"

    Scenario: See edit options
       Given I am logged in as "admin" with password "publish"
        When I go to "My profile" page
        Then I see "Edit profile" button
         And I see "Change password" button

    Scenario: See links for my Content objects and notifications
       Given I am logged in as "admin" with password "publish"
        When I go to "My profile" page
        Then I see "My drafts" link
         And I see "My pending items" link
         And I see "My notification settings" link

    Scenario Outline: See messages when no item to list
       Given I am logged in as "admin" with password "publish"
         And I am on "My profile" page
        When I click at "<Link>" link
        Then I see "<Page>" page
         And I see "<Title>" title
         And I see "<Message>" message

        Examples:
            | Link                     | Page             | Title                     | Message                                                          |
            | My drafts                | my drafts        | My drafts                 | You have no drafts                                               |
            | My pending items         | my pending items | My pending items [0]      | Your pending list is empty                                       |
            | My notification settings | my notifications | My item notifications [0] | You have not subscribed to receive notifications about any items |
            | My wish list             | my wish list     | Wish list                 | Empty wish list                                                  |
            | My orders                | my orders        | Customer information      |                                                                  |

    Scenario: See possible notification settings
       Given I am logged in as "admin" with password "publish"
         And I am on "My profile" page
        When I click at "My notification settings" link
        Then I see a checkbox field with "Receive all messages combined in one digest" label
         And I see receive digest fieldset with:
            | Label                         |
            | Daily, at                     |
            | Once per week, on             |
            | Once per month, on day number |
         And I see "Apply changes" button

    Scenario Outline: Access change profile information and password changes page
       Given I am logged in as "admin" with password "publish"
         And I am on "My profile" page
        When I click at "<Action>" button
         And I move through "<Type>" redirect pages
        Then I see "<Action>" page
         And I see "<Title>" title
    # the following sentences are needed to discard the profile draft so that
    # the test can be run again
         And I click at "<Cancel>" button
         And I click at "Redirect" button

        Examples:
            | Action          | Type     | Title                            | Cancel        |
            | Edit profile    | profile  | Edit <Administrator User> (User) | Discard draft |
            | Change password | password | Change password for user admin   | Cancel        |

    Scenario: Unable to change password without 'actual' password
       Given I am logged in as "admin" with password "publish"
         And I am changing password
        When I fill in "newPassword" with "1my2new3password"
         And I fill in "confirmPassword" with "1my2new3password"
         And I click at "OK" button
        Then I see "Please retype your old password" error

    Scenario: Unable to change password with wrong password
       Given I am logged in as "admin" with password "publish"
         And I am changing password
        When I fill in "oldPassword" with "notMyPass"
         And I fill in "newPassword" with "1my2new3password"
         And I fill in "confirmPassword" with "1my2new3password"
         And I click at "OK" button
        Then I see "Please retype your old password" error

    ###
    # @todo Test password and profile edition
    #   pending rollback
    ###

    Scenario: Change password
       Given test is pending need rollback action feature

    Scenario: Edit profile information
       Given test is pending need rollback action feature

    ###
    # @todo Test drafts, orders, pending items and wish list
    #   pending content manager
    ###

    Scenario: See my drafts table
       Given test is pending content managing system

    Scenario: Select all my drafts
       Given test is pending content managing system

    Scenario: Unselect all my drafts
       Given test is pending content managing system

    Scenario: Delete a draft
       Given test is pending content managing system

    Scenario: Empty my drafts list
       Given test is pending content managing system

    Scenario: Edit a draft
       Given test is pending content managing system

    Scenario: Edit and publish a draft
       Given test is pending content managing system

    Scenario: See my drafts table pagination
       Given test is pending content managing system

    Scenario: Select and delete all drafts won't delete drafts on other pages
       Given test is pending content managing system

    ###
    # @todo Test orders, pending items and wish list
    ###
