Feature: Verifying emptiness

  Scenario: an empty table
    Given I have a Mortadella instance: "m = Mortadella::Horizontal.new headers: ['foo']"
    When I ask it whether it is empty:  "m.empty?"
    Then it responds with true

  Scenario: a non-empty table
    Given I have a Mortadella instance: "m = Mortadella::Horizontal.new headers: ['foo']"
    And I add a data row:               "m << ['bar']"
    When I ask it whether it is empty:  "m.empty?"
    Then it responds with false
