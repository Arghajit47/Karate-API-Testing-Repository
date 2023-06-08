Feature: Creating a resource
Background: 
    * url 'https://jsonplaceholder.typicode.com'
Scenario: Creating a resource
    Given path '/posts'
    When request { "title": 'foo', "body": 'bar', "userId": 1 } 
    And method POST
    Then status 201
    And karate.write(response, "Generate/createResource.json")
    And match response.id == 101
    And match response.userId == 1
    And match response.title == "foo"
    And match response.body == "bar"
    And match response == {"title": "foo", "body": "bar", "userId": 1, "id": 101}