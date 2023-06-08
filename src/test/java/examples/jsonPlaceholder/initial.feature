Feature: Trying out initial request - 'https://jsonplaceholder.typicode.com/'

Scenario:
    Given url 'https://jsonplaceholder.typicode.com/todos/1'
    When method GET
    Then status 200
    And karate.write(response, "Generate/initial.json")