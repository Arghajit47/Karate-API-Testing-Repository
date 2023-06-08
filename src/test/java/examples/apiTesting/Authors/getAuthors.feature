Feature: Get All Authors
Background:
    * url 'https://fakerestapi.azurewebsites.net/api/v1/Authors'
Scenario: Get All Authors
    When method GET
    Then status 200
    And karate.write(response, 'Authors/getAuthors.json')
