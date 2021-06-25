Feature: Order Validation Service API Test

  Background:
    * def baseUrl = 'http://localhost:8088'

  Scenario: Request for Valid PO
    Given url baseUrl + '/esa/validate'
    And request read('po-request.json')
    And header Content-Type = 'application/json'
    When method POST
    Then assert responseStatus == 400
    And match responseType == 'json'
    And match response contains {poAlreadyProcessed:false}