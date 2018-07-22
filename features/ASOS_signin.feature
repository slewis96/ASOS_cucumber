Feature: Signing up for an ASOS account

  @success @successsi
  Scenario: Successfully signin
    Given I am on the signin page
    When I input the correct details signin
    And I input valid password
    And I click signin
    Then I should be signed in on my account

  @invalid @invalidsi
  Scenario: Inputting invalid password signin
    Given I am on the signin page
    When I input the correct details signin
    And I input the an incorrect password
    And I click signin
    Then I get an signin error
