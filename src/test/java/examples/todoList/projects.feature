Feature: Project API
Background:
    Given url "https://api.todoist.com/rest/v2"
    Given header Authorization = 'Bearer 3d40263d71e52c7b8839f65f7757732813cb8790'

Scenario: Get User's Project
    Given path 'projects'
    When method GET
    Then status 200
    And print response

Scenario: Add a new project
    Given path 'projects'
    And request { name: "Shopping List"}
    When method POST
    Then status 200
    And print response
    And karate.write(response.id, "projectId.txt")

Scenario: Update the project
    * def projectId =  karate.read("file:target/projectId.txt")
    Given path `projects/${projectId}`
    And request { name: "Shopping Items List"}
    When method POST
    Then status 200
    And print response
    And karate.write(response.id, "projectId.txt")

Scenario: Update the project
    * def projectId =  karate.read("file:target/projectId.txt")
    Given path `projects/${projectId}`
    And request { name: "Shopping Items List"}
    When method POST
    Then status 200
    And print response

Scenario: Get All Collaborators
    * def projectId =  karate.read("file:target/projectId.txt")
    Given path `projects/${projectId}/collaborators`
    When method GET
    Then status 200
    And print response

    