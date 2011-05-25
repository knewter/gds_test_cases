Scenario: Risk Tier Graduation
  Given an applicant is loaded from file "Risk Tier Graduation.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

