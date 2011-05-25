Scenario: 7 DD's - level 6
  Given an applicant is loaded from file "7 DD's - level 6.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

