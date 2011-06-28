Scenario: CLI:  Level 4 to Level 5
  Given an applicant loaded from file "CLI:  Level 4 to Level 5.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Increased"
    And the result should have key "AdverseReasons" that is nil


    And the result should have key "RiskTier" set to "2"
    And the result should have key "DDLevel" set to "750"
    And the result should have key "NbrRepayments" set to "1"
    And the result should have key "CreditLine" set to "300.00"
    And the result should not have any ErrorCodes
