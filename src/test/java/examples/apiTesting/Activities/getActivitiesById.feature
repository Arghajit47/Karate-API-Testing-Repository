Feature: Get Activities By ID
Background:
    * def id = 4
Scenario: Get Activities By ID
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Activities/'+id
    When method GET
    Then status 200
    And print response
    And karate.write(response, 'Activities/getActivitiesById.json')
    