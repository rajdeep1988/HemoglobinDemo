Feature: Reporting Service API Test

  Background:
    * def baseUrl = 'http://localhost:8080'

  Scenario: Retrieve all Items from ESA DB
    Given url baseUrl + '/esa/reports/items'
    When method GET
    Then assert responseStatus == 200
    And match responseType == 'json'
    And match response contains {message:"Record Found"}
    And match response == read('items-response.json')
    
   Scenario: Retrieve specific gtin from ESA DB
    Given url baseUrl + '/esa/reports/item/772927012144'
    When method GET
    Then assert responseStatus == 200
    And match responseType == 'json'
    And match response contains {message:"Record Found"}
    And match response == read('gtin-response.json')