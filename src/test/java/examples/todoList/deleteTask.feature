Feature: Tasks API
Background:
    Given url "https://api.todoist.com/rest/v2"
    Given header Content-Type = 'application/json'
    Given header X-Request-Id = '#(uuidgen)'
    Given header Authorization = 'Bearer 3d40263d71e52c7b8839f65f7757732813cb8790'
Scenario: Delete a Task
    * def taskId =  karate.read("file:target/taskId.txt")
    Given path `tasks/${taskId}`
    When method DELETE
    Then status 204   
