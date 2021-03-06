
Scenario: Risk Tier Graduation
  Given an applicant loaded from file "Risk Tier Graduation.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Improved"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "4"
    And the result should have key "DDLevel" set to "500"
    And the result should have key "NbrRepayments" set to "3"
    And the result should have key "CreditLine" set to "500.00"
    And the result should not have any ErrorCodes
