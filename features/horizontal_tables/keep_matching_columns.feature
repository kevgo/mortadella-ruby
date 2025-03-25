Feature: removing empty rows

  Scenario: filtering multiple columns
    Given I create a horizontal Mortadella instance: "m = Mortadella::Horizontal.new headers: ['DAY', 'ACTIVITY', 'HIGH-SCORE', 'AVERAGE']"
    And I add a data row:                            "m << ['Monday',    'mowing',    '1.0', '0.5']"
    And I add another data row:                      "m << ['Tuesday',   'tutoring',  '2.0', '1.1']"
    When I filter column names:                      "m.keep_matching_columns ['DAY', 'HIGH-SCORE']"
    And I request the instance data table            "m.table"
    Then Mortadella returns an object that matches this Cucumber table
      | DAY     | HIGH-SCORE |
      | Monday  | 1.0        |
      | Tuesday | 2.0        |
