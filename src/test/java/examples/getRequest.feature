Feature: Trying to execute GET request

Background: 
    * url 'https://gorest.co.in/public/v2/users'
Scenario: Get All Users
 When method GET
 Then status 200
 And print response

# Scenario: Get Specific User
#     And path '4861'
#     When method GET
#     Then status 200
#     And print response
#     * def jsonResponse = response
#     * print jsonResponse
#     * def charName = response.name
#     * print charName
#     * match charName == "Vaijayanthi Mehra JD"

# Scenario: Using Quary Parameter in API Calls
#     And param id = 4861
#     When method GET
#     Then status 200
#     And print response
#     And print response[0].status == "active"

# Scenario: Using 2 Quary Parameter in API Calls
#     * def query = {status: "active", id: 4861, gender: "female"}
#     And params query
#     When method GET
#     Then status 200
#     And print response
#     And print response[0].status == "active"
#     And print response.length == 1
