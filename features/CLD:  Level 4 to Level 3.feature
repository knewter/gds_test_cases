Scenario: CLD:  Level 4 to Level 3
  Given an applicant is loaded from file "CLD:  Level 4 to Level 3.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

