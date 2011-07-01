
Scenario: Grad Tier 5 to Tier 6 - DD Inc
  Given an applicant loaded from file "Grad Tier 5 to Tier 6 - DD Inc.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Improved"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "6"
    And the result should have key "DDLevel" set to "1000"
    And the result should have key "NbrRepayments" set to "5"
    And the result should have key "CreditLine" set to "1800.00"
    And the result should not have any ErrorCodes
