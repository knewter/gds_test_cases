
Scenario: Credit Line Increase
  Given an applicant loaded from file "Credit Line Increase.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Increased"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "3"
    And the result should have key "DDLevel" set to "750"
    And the result should have key "NbrRepayments" set to "2"
    And the result should have key "CreditLine" set to "450.00"
    And the result should not have any ErrorCodes
