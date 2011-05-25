Scenario: Block Code I
  Given an applicant is loaded from file "Block Code I.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

