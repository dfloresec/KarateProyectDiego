@Validation2
Feature: Example Test

  Scenario: Consulta de usuario por ID exitoso al api regres.in
    Given url 'https://regres.in/api/users/2'
    When method GET
    Then status 200
    * print response

  Scenario: Consulta de usuario por ID fallido al api regres.in
    Given url 'https://regres.in/api/users/23'
    When method GET
    Then status 404
    * print response

  Scenario: Crear usuario exitoso al api regres.in
    Given url 'https://regres.in/api/users'
    And request { "name": "morpheus", "job": "leader" }
    When method POST
    Then status 201
    * print response

