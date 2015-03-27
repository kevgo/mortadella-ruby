Feature: Drying up repetitive fields

  As a developer with a lot of repetitive data in my Cucumber tables
  I want that redundant elements are omitted from my table
  So that I can see better how data in my table is grouped and where it changes.


  Scenario: drying up repetitive columns
    Given I have a Mortadella instance with a DRY column:  "m = Mortadella.new headers: ['DAY', 'ACTIVITY'], dry: ['DAY']"

    And I add an activity for Monday:        "m << ['Monday', 'mowing']"
    And I add another activity for Monday:   "m << ['Monday', 'musing']"
    And I add another activity for Monday:   "m << ['Monday', 'mentoring']"

    And I add an activity for Tuesday:       "m << ['Tuesday', 'typing']"
    And I add another activity for Tuesday:  "m << ['Tuesday', 'tutoring']"
    And I add another activity for Tuesday:  "m << ['Tuesday', 'throwing']"

    When I request the instance data table   "m.table"
    Then I receive a table with repeated day names cleared out for better readability
      | DAY     | ACTIVITY  |
      | Monday  | mowing    |
      |         | musing    |
      |         | mentoring |
      | Tuesday | typing    |
      |         | tutoring  |
      |         | throwing  |

