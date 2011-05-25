Scenario: Block Code A
  Given an applicant is loaded from file "Block Code A.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

