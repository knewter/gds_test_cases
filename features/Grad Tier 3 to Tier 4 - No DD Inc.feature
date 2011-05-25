Scenario: Grad Tier 3 to Tier 4 - No DD Inc
  Given an applicant is loaded from file "Grad Tier 3 to Tier 4 - No DD Inc.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

