Scenario: Credit Line Increase
  Given an applicant is loaded from file "Credit Line Increase.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

