Feature: Post Activitie

Background:
    * def id = 47
    * url 'https://fakerestapi.azurewebsites.net/api/v1/Activities'

Scenario: Add Activities
    When request { "id": #(id),"title": "Activity - 47","dueDate": "2023-06-08T06:35:00.337Z","completed": true } 
    And method POST
    Then status 200
    And print response
    And karate.write(response, 'Activities/addActivities.json')

