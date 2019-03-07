Feature: Do a search

Being a user that accesses RGA page
I can do a search for a specific content

@search
Scenario: Do a search
    Given that the user access the RGA website
    When he does a search for "Bob Greenberg" 
    Then he will be redirect for the search results


