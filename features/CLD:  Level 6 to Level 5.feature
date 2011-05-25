Scenario: CLD:  Level 6 to Level 5
  Given an applicant is loaded from file "CLD:  Level 6 to Level 5.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

