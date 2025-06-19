Feature: Hacer POST request a OpportunityEngine

  Scenario: Enviar solicitud con el cuerpo recibido
    Given url url
    Given header Content-Type = 'application/json'
    And request requestBody
    When method POST
    Then status 200

    * match responseStatus == 200 || responseStatus == 201 || responseStatus == 202

    * print '📥 Código HTTP recibido:', responseStatus

    * print '📜 Respuesta completa:', karate.pretty(response)
