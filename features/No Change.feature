Scenario: No Change
  Given an applicant is loaded from file "No Change.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

