Feature: Ejecutar query de oportunidades

  Scenario: Verificar si ya existe la oportunidad
    Given url url
    And param q = query
    When method POST
    Then status 200