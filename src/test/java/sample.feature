Feature: Print Hello world
  Scenario: 1. Hello World
    * print 'hello world'
    * print 'hello naveen automation'

  Scenario: 2. Declare and print variable
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount->' + (balance + fee + tax)

  Scenario: 3. Cal
    * def a = 20
    * def b = 20
    * print 'multiple' +(a*b)