Scenario: Suspended - Inactive Card
  Given an applicant is loaded from file "Suspended - Inactive Card.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

