Feature: Get Requests for All
Background:
    * url 'https://jsonplaceholder.typicode.com'
Scenario: Get All Posts
    Given path '/posts'
    When method GET
    Then status 200
    And karate.write(response, "Generate/getAllPosts.json")

Scenario: Get All Comments
    Given path '/comments'
    When method GET
    Then status 200
    And karate.write(response, "Generate/getAllComments.json")

Scenario: Get All Albums
    Given path '/albums'
    When method GET
    Then status 200
    And karate.write(response, "Generate/getAllAlbums.json")

Scenario: Get All Photos
    Given path '/photos'
    When method GET
    Then status 200
    And karate.write(response, "Generate/getAllPhotos.json")

Scenario: Get All Todos
    Given path '/todos'
    When method GET
    Then status 200
    And karate.write(response, "Generate/getAllTodos.json")

Scenario: Get All Users
    Given path '/users'
    When method GET
    Then status 200
    And karate.write(response, "Generate/getAllUsers.json")