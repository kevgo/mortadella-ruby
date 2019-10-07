Feature: Verifying emptiness

  (see ../horizontal_tables/emptiness.feature)


  Scenario: an empty table
    Given I have a Mortadella instance:  "m = Mortadella::Vertical.new"
    When I ask it whether it is empty:   "m.empty?"
    Then it responds with true


  Scenario: a non-empty table
    Given I have a Mortadella instance:  "m = Mortadella::Vertical.new"
    And I add a data row:                "m['NAME'] = 'Mortadella'"
    When I ask it whether it is empty:   "m.empty?"
    Then it responds with false
