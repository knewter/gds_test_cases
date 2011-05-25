Scenario: Grad Tier 5 to Tier 6 - No DD Inc
  Given an applicant is loaded from file "Grad Tier 5 to Tier 6 - No DD Inc.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

