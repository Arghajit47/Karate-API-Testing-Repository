Feature: Deleting a resource
Background: 
    * url 'https://jsonplaceholder.typicode.com'
Scenario: Deleting a resource
    Given path '/posts/1'
    When method DELETE
    Then status 200
    And karate.write(response, "Generate/deleteResource.json")
