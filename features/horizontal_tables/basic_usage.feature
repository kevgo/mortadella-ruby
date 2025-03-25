Feature: Creating mock data tables

  Scenario: Creating a simple data table
    Given I create a horizontal Mortadella instance: "m = Mortadella::Horizontal.new headers: ['DAY', 'ACTIVITY']"
    And I add a data row:                            "m << ['Monday', 'mowing']"
    And I add another data row:                      "m << ['Tuesday', 'tutoring']"
    And I add another data row:                      "m << ['Wednesday', 'welcoming']"
    When I request the instance data table           "m.table"
    Then Mortadella returns an object that matches this Cucumber table
      | DAY       | ACTIVITY  |
      | Monday    | mowing    |
      | Tuesday   | tutoring  |
      | Wednesday | welcoming |
