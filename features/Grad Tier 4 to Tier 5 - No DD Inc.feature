Scenario: Grad Tier 4 to Tier 5 - No DD Inc
  Given an applicant is loaded from file "Grad Tier 4 to Tier 5 - No DD Inc.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

