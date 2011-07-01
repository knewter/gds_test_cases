
Scenario: 24 DD's (ATP Credit Line Used)
  Given an applicant loaded from file "24 DD's (ATP Credit Line Used).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Approved"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "4"
    And the result should have key "DDLevel" set to "375"
    And the result should have key "NbrRepayments" set to "3"
    And the result should have key "CreditLine" set to "375.00"
    And the result should not have any ErrorCodes
