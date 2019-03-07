Feature: Translate page to another language

If a user from a foreign Country visits the page
The page should have the option to show the translated content

@translate
Scenario: Translate content
    Given that the user access the RGA website
    When he requests the page translation
    Then the page content will be displayed translated