Scenario: 12 DD's (Not 18 Years Old)
  Given an applicant loaded from file "12 DD's (Not 18 Years Old).xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Declined Ineligible"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "Not 18"






    And the result should not have any ErrorCodes
