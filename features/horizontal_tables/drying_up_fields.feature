Feature: Drying up repetitive fields

  Scenario: drying up repetitive columns
    Given I have a Mortadella instance with a DRY column: "m = Mortadella::Horizontal.new headers: ['DAY', 'ACTIVITY'], dry: ['DAY']"
    And I add an activity for Monday:                     "m << ['Monday', 'mowing']"
    And I add another activity for Monday:                "m << ['Monday', 'musing']"
    And I add an activity for Tuesday:                    "m << ['Tuesday', 'typing']"
    And I add another activity for Tuesday:               "m << ['Tuesday', 'tutoring']"
    When I request the instance data table                "m.table"
    Then Mortadella returns a table with repeated day names cleared out for better readability
      | DAY     | ACTIVITY |
      | Monday  | mowing   |
      |         | musing   |
      | Tuesday | typing   |
      |         | tutoring |
