Feature: Basic operations

  Scenario: Add
    Given operand A is 1
    And operand B is 2
    When I add them
    Then the result is 3

