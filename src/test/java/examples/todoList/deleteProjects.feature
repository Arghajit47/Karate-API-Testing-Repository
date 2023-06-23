Feature: Delete Project
Background:
    Given url "https://api.todoist.com/rest/v2"
    Given header Authorization = 'Bearer 3d40263d71e52c7b8839f65f7757732813cb8790'
Scenario: Delete project
    * def projectId =  karate.read("file:target/projectId.txt")
    Given path `projects/${projectId}`
    When method DELETE
    Then status 204
    And print response
