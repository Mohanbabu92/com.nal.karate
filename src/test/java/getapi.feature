Feature: GET API feature
  Scenario: get user details
    Given url 'https://gorest.co.in/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def actname = jsonResponse.data.name
    * def actid = jsonResponse.data.id
    * def actemail = jsonResponse.data.email
    * print actname
    * print actid
    * print actemail
    * match actname == 'Msgr. Subhasini Verma'
    * match actid == 30
    * match actemail == 'verma_msgr_subhasini@crona.info'


  Scenario: get user details - user not found
    Given url 'https://gorest.co.in/public/v1/users'
    And path '1'
    When method GET
    Then status 404