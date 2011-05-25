Scenario: Suspended - No DD
  Given an applicant is loaded from file "Suspended - No DD.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

