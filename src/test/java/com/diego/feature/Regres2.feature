@Validation3
Feature: Example Test

  Scenario Outline: Consulta de usuario por ID exitoso por medio de ejemplo al api regres.in
    Given url 'https://regres.in/api/users/<userId>'
    When method GET
    Then status <status>
    * print response

    Examples:
    | userId | status |
    | 2      | 200   |
