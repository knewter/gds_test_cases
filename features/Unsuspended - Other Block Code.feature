
Scenario: Unsuspended - Other Block Code
  Given an applicant loaded from file "Unsuspended - Other Block Code.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Unsuspended"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "5"
    And the result should have key "DDLevel" set to "250"
    And the result should have key "NbrRepayments" set to "4"
    And the result should have key "CreditLine" set to "350.00"
    And the result should not have any ErrorCodes
