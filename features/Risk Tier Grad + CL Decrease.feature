Scenario: Risk Tier Grad + CL Decrease
  Given an applicant is loaded from file "Risk Tier Grad + CL Decrease.xml"
  When the applicant is sent to processes_application
  Then the result should have key "Status" set to "Submitted"

