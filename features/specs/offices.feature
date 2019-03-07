Feature: Find an especific office

If a user wants to see specific projects from an office
The page should have the option to filter the offices

@office
Scenario: Visit a specific office
    Given that the user access the RGA website
    When he requests a specific office
    Then will be displayed the projects from the selected office

