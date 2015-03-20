Feature: Drying up repetitive fields

  As a developer with a lot of repetitive data in my Cucumber tables
  I want that redundant elements are omitted from my table
  So that I can see better how data in my table is grouped and where it changes.


  Scenario: drying up repetitive columns
    Given I create a Mortadella instance with a DRY column:     "m = Mortadella.new headers: ['DAY', 'ACTIVITY'], dry: ['DAY']"

    And I add an activity for Monday:                           "m.add_row ['Monday', 'mowing']"
    And I add another activity for Monday:                      "m.add_row ['Monday', 'musing']"
    And I add another activity for Monday:                      "m.add_row ['Monday', 'mentoring']"

    And I add an activity for Tuesday:                          "m.add_row ['Tuesday', 'typing']"
    And I add another activity for Tuesday:                     "m.add_row ['Tuesday', 'tutoring']"
    And I add another activity for Tuesday:                     "m.add_row ['Tuesday', 'throwing']"

    When I request the data table from the Mortadella instance  "m.table"
    Then I receive a table with repeated day names cleared out for better readability
      | DAY     | ACTIVITY  |
      | Monday  | mowing    |
      |         | musing    |
      |         | mentoring |
      | Tuesday | typing    |
      |         | tutoring  |
      |         | throwing  |

