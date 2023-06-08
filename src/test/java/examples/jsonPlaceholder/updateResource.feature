Feature: Updating a resource
Background: 
    * url 'https://jsonplaceholder.typicode.com'
Scenario: Updating a resource
    Given path '/posts/1'
    When request { "title": 'foo', "body": 'bar', "userId": 1, "id": 1 } 
    And method PUT
    Then status 200
    And karate.write(response, "Generate/updateResource1.json")
    And match response.id == 1
    And match response.userId == 1
    And match response.title == "foo"
    And match response.body == "bar"
    And match response == {"title": "foo", "body": "bar", "userId": 1, "id": 1}


Scenario: Updating a resource
    Given path '/posts/1'
    When request { "title": 'food'} 
    And method PATCH
    Then status 200
    And karate.write(response, "Generate/updateResource2.json")
    And match response.id == 1
    And match response.userId == 1
    And match response.title == "food"
