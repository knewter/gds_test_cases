Scenario: Pending 1 DD (Low Direct Deposit)
  Given an applicant loaded from file "Pending 1 DD (Low Direct Deposit).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "No Change"
    And the result should have key "AdverseReasons" that is nil






    And the result should not have any ErrorCodes
