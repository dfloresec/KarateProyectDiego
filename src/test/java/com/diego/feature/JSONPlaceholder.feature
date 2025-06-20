@PlaceholderAPI
Feature: JSONPlaceholder API Tests

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Get all posts
    Given path 'posts'
    When method get
    Then status 200
    And match response[0].id == 1
    And match response[0].userId == 1
    And match each response contains { id: '#number', userId: '#number', title: '#string', body: '#string' }

  Scenario: Create a new post
    Given path 'posts'
    And request { title: 'Test Post', body: 'This is a test post', userId: 1 }
    When method post
    Then status 201
    And match response contains { id: '#number', title: 'Test Post', body: 'This is a test post', userId: 1 }

  Scenario: Get a specific post
    Given path 'posts/1'
    When method get
    Then status 200
    And match response.id == 1
    And match response.title == 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit'
    And match response.body == '#string'
    And match response.userId == '#number'
