Scenario: Pending to Approved
  Given an applicant is loaded from file "Pending to Approved.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"
