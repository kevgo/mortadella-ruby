Feature: Creating mock data tables

  As a Cucumber user
  I want to programmatically create mock data tables from application data
  So that I can use Cucumber's built-in table diffing functionality to verify my application behavior ergonomically.


  Scenario: Creating a simple data table
    Given I create a Mortadella instance:                      "m = Mortadella.new headers: ['DAY', 'ACTIVITY']"
    And I add a data row:                                      "m.add_row ['Monday', 'mowing']"
    And I add another data row:                                "m.add_row ['Tuesday', 'tutoring']"
    And I add another data row:                                "m.add_row ['Wednesday', 'welcoming']"
    When I request the data table from my Mortadella instance  "m.table"
    Then I receive an object that matches this Cucumber table
      | DAY       | ACTIVITY  |
      | Monday    | mowing    |
      | Tuesday   | tutoring  |
      | Wednesday | welcoming |

