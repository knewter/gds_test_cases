
Scenario: 0 DD's (No Direct Deposit)
  Given an applicant loaded from file "0 DD's (No Direct Deposit).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Pending DD"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "No DD"






    And the result should not have any ErrorCodes
