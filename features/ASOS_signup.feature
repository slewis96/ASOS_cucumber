Feature: Signing up for an ASOS account

  @success @successsu
  Scenario: Successfully signup
    Given I am on the signup page
    When I input the correct details
    And I input valid password
    And I click register
    Then I should be signed in on my account

  @invalid @invalidsu
  Scenario Outline: Inputting invalid password
    Given I am on the signup page
    When I input the correct details
    And I input the an invalid <password>
    And I click register
    Then I get an appropriate <error>

    Examples:
    | password |                          error                                                  |
    |          |                          Hey, we need a password here                           |
    | 1111111  |                     At least 6 letters and 1 number, please!                    |
    | aaaaaaa  |                     At least 6 letters and 1 number, please!                    |
