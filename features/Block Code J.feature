
Scenario: Block Code J
  Given an applicant loaded from file "Block Code J.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "Improved"
    And the result should have key "AdverseReasons" that is nil
    And the result should have key "BlockCode1" set to "J"

    And the result should have key "RiskTier" set to "3"
    And the result should have key "DDLevel" set to "250"
    And the result should have key "NbrRepayments" set to "2"
    And the result should have key "CreditLine" set to "150.00"
    And the result should not have any ErrorCodes
