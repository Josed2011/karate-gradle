@REQ_PQBP-2023 @ConsultaProductos
Feature: Evaluacion CT2 Pichincha

  Background:
    * def cat = '/category/electronics'

  @id:1 @GetProduct
  Scenario Outline: T-API-PQBP-2023-CA1- Pregunta 1 - Obtener datos de un producto
    * header content-type = 'application/json'
    Given url baseProd
    When method GET
    Then status 200
    And print response
    And match $..id contains <id>
    And match $..rate contains <rate>
    And match $..category contains "<categoria>"
    And match $..title contains "<titulo>"
    And match $..id contains '#notnull'
    Examples:
      |read('classpath:../examples/Data/datosProducto.csv')|

     # Validation
  @id:2 @GetProductCat
  Scenario Outline: T-API-PQBP-2023-CA2- Pregunta 2 - Obtener Datos por categoria
    Given url baseProd
    And path cat
    When method GET
    Then status 200
    And print response
    And match $..id contains <id>
    And match response == '#[6]'

    Examples:
      |read('classpath:../examples/Data/datosProducto.csv')|