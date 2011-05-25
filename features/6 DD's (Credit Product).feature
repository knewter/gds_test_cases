Scenario: 6 DD's (Credit Product)
  Given an applicant is loaded from file "6 DD's (Credit Product).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

