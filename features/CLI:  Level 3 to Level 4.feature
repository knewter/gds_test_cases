Scenario: CLI:  Level 3 to Level 4
  Given an applicant is loaded from file "CLI:  Level 3 to Level 4.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

