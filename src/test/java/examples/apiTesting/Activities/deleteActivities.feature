Feature: Delete Activitie

Background:
    * def id = 47

Scenario: Delete Activities
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Activities/'+id
    And method DELETE
    Then status 200
    And print response