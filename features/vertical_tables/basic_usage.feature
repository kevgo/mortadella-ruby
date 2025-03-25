Feature: Creating vertical mock data tables

  Scenario: Creating a simple data table
    Given I create a vertical Mortadella instance: "m = Mortadella::Vertical.new"
    And I add a data row:                   "m['NAME'] = 'Mortadella'"
    And I add another data row:             "m['TYPE'] = 'Ruby Gem'"
    When I request the instance data table  "m.table"
    Then Mortadella returns an object that matches this Cucumber table
      | NAME | Mortadella |
      | TYPE | Ruby Gem   |
