Scenario: 12 DD's (Not 18 Years Old)
  Given an applicant is loaded from file "12 DD's (Not 18 Years Old).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

