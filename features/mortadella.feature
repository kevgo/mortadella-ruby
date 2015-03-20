Feature: Creating mock data tables

  As a Cucumber user
  I want to be able to create mock data tables from expected test data
  So that I can use Cucumber's table diffing functionality to verify my actual data ergonomically


  Scenario: valid data
    Given I set up a Mortadella object "m" through `Mortadella.new headers: ['FOO', 'BAR']`
    And I add a data row through `m.add_row ['one', 'two']`
    And I add a data row through `m.add_row ['ten', 'eleven']`
    When I request the data table through `m.table`
    Then I receive a Ruby object that looks like
      """
      [ ['FOO', 'BAR'],
        ['one', 'two'],
        ['ten', 'eleven'] ]
      """
