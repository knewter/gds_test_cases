
Scenario: CLI:  Level 6 to Level 7
  Given an applicant loaded from file "CLI:  Level 6 to Level 7.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Increased"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "2"
    And the result should have key "DDLevel" set to "1250"
    And the result should have key "NbrRepayments" set to "1"
    And the result should have key "CreditLine" set to "500.00"
    And the result should not have any ErrorCodes
