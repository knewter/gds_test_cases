
Scenario: No Change - Existing Block Code
  Given an applicant loaded from file "No Change - Existing Block Code.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "No Change"
    And the result should have key "AdverseReasons" that is nil

    And the result should have key "BlockCode2" set to "L"
    And the result should have key "RiskTier" set to "3"
    And the result should have key "DDLevel" set to "250"
    And the result should have key "NbrRepayments" set to "2"
    And the result should have key "CreditLine" set to "250.00"
    And the result should not have any ErrorCodes
