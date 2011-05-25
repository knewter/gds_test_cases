Scenario: 0 DD's (No Direct Deposit)
  Given an applicant is loaded from file "0 DD's (No Direct Deposit).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

