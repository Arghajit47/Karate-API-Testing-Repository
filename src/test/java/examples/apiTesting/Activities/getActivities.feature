Feature: Get Activities

Scenario: Get Activities
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Activities'
    When method GET
    Then status 200
    And print response
    And karate.write(response, 'Activities/getActivities.json')
