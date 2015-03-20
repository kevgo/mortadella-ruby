Feature: Creating mock data tables

  As a Cucumber user
  I want to be able to programmatically create mock data tables from application data
  So that I can use Cucumber's powerful table diffing functionality to verify my application behavior ergonomically.


  Scenario: Creating tables
    Given I create a Mortadella instance                       "m = Mortadella.new headers: ['DAY', 'ACTIVITY']"
    And I add a data row                                       "m.add_row ['Monday', 'mowing']"
    And I add another data row                                 "m.add_row ['Monday', 'musing']"
    And I add another data row                                 "m.add_row ['Monday', 'mentoring']"
    When I request the data table from my Mortadella instance  "m.table"
    Then I receive an object that matches this Cucumber table
      | DAY     | ACTIVITY  |
      | Monday  | mowing    |
      | Monday  | musing    |
      | Monday  | mentoring |

