Scenario: Risk Tier Grad + CL Increase
  Given an applicant loaded from file "Risk Tier Grad + CL Increase.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Improved"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "5"
    And the result should have key "DDLevel" set to "750"
    And the result should have key "NbrRepayments" set to "4"
    And the result should have key "CreditLine" set to "1050.00"
    And the result should not have any ErrorCodes
