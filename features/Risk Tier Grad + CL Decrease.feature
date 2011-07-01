
Scenario: Risk Tier Grad + CL Decrease
  Given an applicant loaded from file "Risk Tier Grad + CL Decrease.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Improved"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "Reduced DD"


    And the result should have key "RiskTier" set to "4"
    And the result should have key "DDLevel" set to "500"
    And the result should have key "NbrRepayments" set to "2"
    And the result should have key "CreditLine" set to "300.00"
    And the result should not have any ErrorCodes
