
Scenario: Suspended - No DD
  Given an applicant loaded from file "Suspended - No DD.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Suspended"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "No DD"

    And the result should have key "BlockCode2" set to "L"
    And the result should have key "RiskTier" set to "1"
    And the result should have key "DDLevel" set to "500"
    And the result should have key "NbrRepayments" set to "1"
    And the result should have key "CreditLine" set to "100.00"
    And the result should not have any ErrorCodes
