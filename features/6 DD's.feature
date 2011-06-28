Scenario: 6 DD's
  Given an applicant loaded from file "6 DD's.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Declined Ineligible"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "OD Product"






    And the result should not have any ErrorCodes
