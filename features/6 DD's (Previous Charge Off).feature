Scenario: 6 DD's (Previous Charge Off)
  Given an applicant is loaded from file "6 DD's (Previous Charge Off).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

