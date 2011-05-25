Scenario: Grad Tier 2 to Tier 3 - DD Inc
  Given an applicant is loaded from file "Grad Tier 2 to Tier 3 - DD Inc.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

