
Scenario: 12 DD's - level 7 - Low ATP
  Given an applicant loaded from file "12 DD's - level 7 - Low ATP.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Declined Low ATP"
    And the result should have key "AdverseReasons" that is not nil
    And the result should have AdverseReason "Low ATP"






    And the result should not have any ErrorCodes
