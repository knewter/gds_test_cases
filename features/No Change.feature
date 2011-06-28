Scenario: No Change
  Given an applicant loaded from file "No Change.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "No Change"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "3"
    And the result should have key "DDLevel" set to "1250"
    And the result should have key "NbrRepayments" set to "2"
    And the result should have key "CreditLine" set to "750.00"
    And the result should not have any ErrorCodes
