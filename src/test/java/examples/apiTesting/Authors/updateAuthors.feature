Feature: Put Author

Background:
    * def id = 47
    * def idBook = 11

Scenario: Update Activities
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/Authors/'+id
    When request {"id": #(id), "idBook": #(idBook), "firstName": "Arghajit", "lastName": "Singha"} 
    And method PUT
    Then status 200
    And print response
    And karate.write(response, 'Authors/updateAuthors.json')