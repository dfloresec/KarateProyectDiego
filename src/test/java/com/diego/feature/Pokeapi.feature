@Apis @Pokeapi
Feature: Example Test

  Scenario: Consulta al api https://pokeapi.co/api/v2/{endpoint}/
    Given url 'https://pokeapi.co/api/v2/pokemon/ditto'
    When method GET
    Then status 200

  Scenario: Obtener el número total de pokémon en el API
    Given url 'https://pokeapi.co/api/v2/pokemon'
    When method GET
    Then status 200
    And match response contains { count: '#number' }
    * def totalPokemon = response.count
    * print 'Total de pokémon:', totalPokemon

  Scenario Outline: Buscar un pokémon por nombre
    Given url 'https://pokeapi.co/api/v2/pokemon/' + '<nombrePokemon>'
    When method GET
    Then status 200
    And match response.name == '<nombrePokemon>'

    Examples:
      | nombrePokemon |
      | pikachu       |
      | bulbasaur     |
      | charmander    |
