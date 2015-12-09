Feature: Creating mock data tables

  As a Cucumber user
  I want to programmatically create horizontal mock data tables from application data
  So that I can use Cucumber's built-in table diffing to verify my application data ergonomically.


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

