Scenario: Credit Line Decrease
  Given an applicant is loaded from file "Credit Line Decrease.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

