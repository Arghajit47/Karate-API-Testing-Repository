Feature: Put Activitie

Background:
    * def id = 47

Scenario: Update Activities
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Activities/'+id
    When request { "id": #(id),"title": "Activity47","dueDate": "2023-06-08T06:35:00.337","completed": true } 
    And method PUT
    Then status 200
    And print response
    And karate.write(response, 'Activities/updateActivities.json')