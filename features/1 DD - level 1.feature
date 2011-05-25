Scenario: 1 DD - level 1
  Given an applicant is loaded from file "1 DD - level 1.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

