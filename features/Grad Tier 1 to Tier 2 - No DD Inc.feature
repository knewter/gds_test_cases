
Scenario: Grad Tier 1 to Tier 2 - No DD Inc
  Given an applicant loaded from file "Grad Tier 1 to Tier 2 - No DD Inc.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Improved"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "2"
    And the result should have key "DDLevel" set to "250"
    And the result should have key "NbrRepayments" set to "1"
    And the result should have key "CreditLine" set to "100.00"
    And the result should not have any ErrorCodes
