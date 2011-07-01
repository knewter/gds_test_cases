
Scenario: Pending to No Change
  Given an applicant loaded from file "Pending to No Change.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Change" set to "No Change"
    And the result should have key "AdverseReasons" that is nil






    And the result should not have any ErrorCodes
