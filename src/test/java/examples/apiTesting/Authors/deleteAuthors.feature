Feature: Delete Authors
Background:
    * def id = 47
    * url 'https://fakerestapi.azurewebsites.net/api/v1/Authors'
Scenario: Delete Authors
    When path '/'+id
    And method DELETE
    Then status 200
    And print response

