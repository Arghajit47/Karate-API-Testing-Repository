Feature: Print Hello World feature

Scenario: Hello World Scenario
    * print 'hello world'
    * print 'hello Arghajit Singha, looks like you are revisiting the basics of karate-world'

Scenario: Declare and print variables
    * def Balance = 5000
    * def Fees = 500
    * def Tax = 10
    * print 'total amount --> ' + (Balance + Fees + Tax)

Scenario: calculator scenario
    * def a = 200
    * def b = 20
    * print 'multiplication →> ' + (a * b)