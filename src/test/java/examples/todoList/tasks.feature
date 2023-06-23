Feature: Tasks API
Background:
    Given url "https://api.todoist.com/rest/v2"
    Given header Content-Type = 'application/json'
    Given header X-Request-Id = '#(uuidgen)'
    Given header Authorization = 'Bearer 3d40263d71e52c7b8839f65f7757732813cb8790'
Scenario: Get active Tasks
    Given path "tasks"
    When method GET
    Then status 200
    And print response


Scenario: Add a New Task
    Given path "tasks"
    Given request { "content": "Buy Milk", "due_string": "tomorrow at 12:00", "due_lang": "en", "priority": 4 }
    When method POST
    Then status 200
    And print response
    And karate.write(response.id, "taskId.txt")

Scenario: Get an Active Task
    * def taskId =  karate.read("file:target/taskId.txt")
    Given path `tasks/${taskId}`
    When method GET
    Then status 200
    And print response

Scenario: Update a task
    * def taskId =  karate.read("file:target/taskId.txt")
    Given path `tasks/${taskId}`
    Given request { "content": "Buy Coffee" }
    When method POST
    Then status 200
    And match response.id == `${taskId}`
    And match response.content == "Buy Coffee"

Scenario: Close a Task
    * def taskId =  karate.read("file:target/taskId.txt")
    Given path `tasks/${taskId}/close`
    When method POST
    Then status 204

Scenario: Reopen a Task
    * def taskId =  karate.read("file:target/taskId.txt")
    Given path `tasks/${taskId}/reopen`
    When method POST
    Then status 204

 