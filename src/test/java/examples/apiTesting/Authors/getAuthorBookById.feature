Feature: Get Book By Id
Background:
    * def id = 47
Scenario:
    When url 'https://fakerestapi.azurewebsites.net/api/v1/Authors/' + id
    And method GET
    Then status 200
    And karate.write(response, 'Authors/getAuthorBookById.json')
