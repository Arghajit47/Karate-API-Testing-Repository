Feature: Get Book By Id
Background:
    * url 'https://fakerestapi.azurewebsites.net/api/v1/Authors'
    * def idBook = 47
Scenario:
    When path '/authors/books/' + idBook 
    And method GET
    Then status 200
    And karate.write(response, 'Authors/getBookByAuthor.json')
