Scenario: Pending 1 DD - level 4
  Given an applicant is loaded from file "Pending 1 DD - level 4.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

