Scenario: 1 DD - level 7
  Given an applicant is loaded from file "1 DD - level 7.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"
