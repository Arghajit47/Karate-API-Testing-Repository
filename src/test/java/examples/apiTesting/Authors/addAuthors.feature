Feature: Add Author
Background:
    * def id = 47
    * url 'https://fakerestapi.azurewebsites.net/api/v1/Authors'
    * def idBook = 47

Scenario: Post Author
    When request {"id": #(id),"idBook": #(idBook),"firstName": "Arghajit","lastName": "Singha"}
    And method POST
    Then status 200
    And print response
    And karate.write(response, 'Activities/addAuthors.json')

