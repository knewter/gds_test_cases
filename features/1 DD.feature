Scenario: 1 DD
  Given an applicant is loaded from file "1 DD.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

