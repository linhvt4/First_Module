Feature: Login Facebook page

Scenario: Login success into Facebook homepage
    Given I am on Facebook log in page
    When I enter valid "username" into "User" field
    And I enter valid "password" into "password" field
    Then I should see Facebook hompage

Scenario Outline: Login unsucess into Facebook hompage
    Given I am on Facebook log in page
    When I enter <username> into "User" field
    And I enter <password> into "password" field
    Then I should see error message

    Examples:
        | username     | password  |
        |              | 123456    |
        | 0000111222   |           |
        |12a@gmail.com | 00000000  |    