Scenario: CLD:  Level 3 to Level 2
  Given an applicant is loaded from file "CLD:  Level 3 to Level 2.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

