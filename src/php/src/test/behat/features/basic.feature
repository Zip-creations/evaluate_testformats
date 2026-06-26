Feature: Basic tests

  Scenario: test_neg
    Then the value should be true

  Scenario: test_pos
    Then the value should be false but expected true

  Scenario: test_skip
    Then this scenario is skipped

  Scenario: test_same_name
    Then the value should be true