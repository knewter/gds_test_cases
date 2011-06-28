Scenario: CLD:  Level 7 to Level 5
  Given an applicant loaded from file "CLD:  Level 7 to Level 5.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Decreased"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "Reduced DD"


    And the result should have key "RiskTier" set to "3"
    And the result should have key "DDLevel" set to "750"
    And the result should have key "NbrRepayments" set to "2"
    And the result should have key "CreditLine" set to "450.00"
    And the result should not have any ErrorCodes
