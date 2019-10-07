Feature: Creating vertical mock data tables

  As a Cucumber user
  I want to programmatically create vertical mock data tables from application data
  So that I can use Cucumber's built-in table diffing to verify my application data ergonomically.


  Scenario: Creating a simple data table
    Given I create a vertical Mortadella instance: "m = Mortadella::Vertical.new"
    And I add a data row:                   "m['NAME'] = 'Mortadella'"
    And I add another data row:             "m['TYPE'] = 'Ruby Gem'"
    And I add another data row:             "m['AUTHOR'] = 'Kevin Goslar'"
    When I request the instance data table  "m.table"
    Then Mortadella returns an object that matches this Cucumber table
      | NAME   | Mortadella   |
      | TYPE   | Ruby Gem     |
      | AUTHOR | Kevin Goslar |

