Feature: removing empty rows

  As a Cucumber user
  I want to be able to filter my Mortadella table against a list of header columns names
  So that my Mortadella table matches the structure of the Cucumber table to compare against precisely and I don't get false negative tests.

  - call "keep_matching_columns" with an array of column names to filter out all mismatching columns


  Scenario: filtering multiple columns
    Given I create a horizontal Mortadella instance: "m = Mortadella::Horizontal.new headers: ['DAY', 'ACTIVITY', 'HIGH-SCORE', 'AVERAGE']"
    And I add a data row:                            "m << ['Monday',    'mowing',    '1.0', '0.5']"
    And I add another data row:                      "m << ['Tuesday',   'tutoring',  '2.0', '1.1']"
    And I add another data row:                      "m << ['Wednesday', 'welcoming', '3.0', '2.2']"
    When I filter column names:                      "m.keep_matching_columns ['DAY', 'HIGH-SCORE']"
    And I request the instance data table            "m.table"
    Then Mortadella returns an object that matches this Cucumber table
      | DAY       | HIGH-SCORE |
      | Monday    | 1.0        |
      | Tuesday   | 2.0        |
      | Wednesday | 3.0        |
