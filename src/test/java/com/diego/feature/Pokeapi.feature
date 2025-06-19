@Validation1
Feature: Example Test

  Scenario: Consulta al api https://pokeapi.co/api/v2/{endpoint}/
    Given url 'https://pokeapi.co/api/v2/pokemon/ditto'
    When method GET
    Then status 200