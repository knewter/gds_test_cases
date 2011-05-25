Scenario: 24 DD's (ATP Credit Line Used)
  Given an applicant is loaded from file "24 DD's (ATP Credit Line Used).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

