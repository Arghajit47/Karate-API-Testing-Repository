Feature: Labels API
Background:
    Given url "https://api.todoist.com/rest/v2"
    Given header Content-Type = 'application/json'
    Given header X-Request-Id = '#(uuidgen)'
    Given header Authorization = 'Bearer 3d40263d71e52c7b8839f65f7757732813cb8790'
Scenario: Get all personal labels
    Given path 'labels'
    When method GET
    Then status 200
    And print response

Scenario: Create a new personal label
    Given path 'labels'
    And request {"name": "Food"}
    When method POST
    Then status 200
    And print response
    And karate.write(response.id, "labelId.txt")

Scenario: Get a personal label
    * def labelId =  karate.read("file:target/labelId.txt")
    Given path `labels/${labelId}`
    When method GET
    Then status 200
    And print response
    And match response.id == `${labelId}`
    And match response.name == "Food"
    And match response.order == 1
    And match response.color == "charcoal"
    And match response.is_favorite == false

Scenario: Update a personal label
    * def labelId =  karate.read("file:target/labelId.txt")
    Given path `labels/${labelId}`
    And request {"name": "Drinks"}
    When method POST
    Then status 200
    And print response
    And match response.id == `${labelId}`
    And match response.name == "Drinks"

Scenario: Delete a personal label
    * def labelId =  karate.read("file:target/labelId.txt")
    Given path `labels/${labelId}`
    When method DELETE
    Then status 204
    And print response

Scenario: Get all shared labels
    Given path 'labels/shared'
    When method GET
    Then status 200
    And print response

Scenario: Rename shared labels
    Given path 'labels/shared/rename'
    And request {"name": "MyLabel", "new_name": "RenamedLabel"}
    When method POST
    Then status 204
    And print response

Scenario: Remove shared labels
    Given path 'labels/shared/remove'
    And request {"name": "MyLabel"}
    When method POST
    Then status 204
    And print response