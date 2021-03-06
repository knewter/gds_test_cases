
Scenario: Pending 1 DD - level 4
  Given an applicant loaded from file "Pending 1 DD - level 4.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Approved"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "1"
    And the result should have key "DDLevel" set to "625"
    And the result should have key "NbrRepayments" set to "1"
    And the result should have key "CreditLine" set to "100.00"
    And the result should not have any ErrorCodes
