
Scenario: Suspended - Low DD
  Given an applicant loaded from file "Suspended - Low DD.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Suspended"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "Low DD"

    And the result should have key "BlockCode2" set to "L"
    And the result should have key "RiskTier" set to "2"
    And the result should have key "DDLevel" set to "250"
    And the result should have key "NbrRepayments" set to "1"
    And the result should have key "CreditLine" set to "100.00"
    And the result should not have any ErrorCodes
