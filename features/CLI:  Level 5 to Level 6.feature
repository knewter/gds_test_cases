Scenario: CLI:  Level 5 to Level 6
  Given an applicant is loaded from file "CLI:  Level 5 to Level 6.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

