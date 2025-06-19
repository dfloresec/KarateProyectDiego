@Validation1
Feature: Example Test

  Scenario: Test example
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200