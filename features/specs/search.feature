Feature: Do a search

Being a user that accesses RGA page
I can do a search for a specific content

@search
Scenario: Do a search
    Given that the user access the RGA website
    When he does a search for "Bob Greenberg" 
    Then he will be redirect for the search results

# @search-no
# Cenário: Realizar uma busca sem resultado
#     Dado que eu acessei a home da RGA
#     Quando eu fizer uma busca por "***"
#     Então devo ser redirecionado para o resultado da busca
#     Mas nenhum resultado será encontrado

