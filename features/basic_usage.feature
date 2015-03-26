Feature: Creating mock data tables

  As a Cucumber user
  I want to programmatically create mock data tables from application data
  So that I can use Cucumber's built-in table diffing functionality to verify my application behavior ergonomically.


  Scenario: Creating a simple data table
    Given I create a Mortadella instance:   "m = Mortadella.new headers: ['DAY', 'ACTIVITY']"
    And I add a data row:                   "m << ['Monday', 'mowing']"
    And I add another data row:             "m << ['Tuesday', 'tutoring']"
    And I add another data row:             "m << ['Wednesday', 'welcoming']"
    When I request the instance data table  "m.table"
    Then I receive an object that matches this Cucumber table
      | DAY       | ACTIVITY  |
      | Monday    | mowing    |
      | Tuesday   | tutoring  |
      | Wednesday | welcoming |

