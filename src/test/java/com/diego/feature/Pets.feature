@Apis @Petsapi
Feature: Validar existencia de usuarios en Petstore

  Background:
    * def usuarios = karate.read('classpath:usuarios.csv')
    * def crearUsuario =
      """
      function(u) {
        var body = {
          id: "999",
          username: u.username,
          firstName: 'Test',
          lastName: 'User',
          email: u.username + '@test.com',
          password: 'password',
          phone: '1234567890',
          userStatus: 1
        };


        var res = karate.call('classpath:com/diego/feature/sendPost.feature', { url: 'https://petstore.swagger.io/v2/user', requestBody: body });
        return res;
      }
      """
    * eval usuarios.forEach(crearUsuario)

  @Scenario1
  Scenario: Validar que el usuario existe en la API Petstore
    Given url 'https://petstore.swagger.io/v2/user/diego'
    When method GET
    Then status 200