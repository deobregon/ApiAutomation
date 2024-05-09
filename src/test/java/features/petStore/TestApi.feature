Feature: PetStore endpoint Test

  Background:
    * def urlApi = 'https://petstore.swagger.io/v2/pet'


    @agregarmascota
  Scenario Outline: Agregar una mascota a la tienda

    * json body = read('classpath:data/bodycreate.json')
    * set body.name = "<name>"

    Given url urlApi
    And request body
    When method POST
    Then status 200
    And match response.id == body.id
    And match response.name == "<name>"
      Examples:
        | read('classpath:data/DataMascota.csv') |


  @BuscarMascota
  Scenario Outline: Buscar la mascota creada
    * json body = read('classpath:data/bodycreate.json')
    Given url urlApi
    And path body.id
    When method GET
    Then status 200
    And match response.name == "<name>"
    Examples:
      | read('classpath:data/DataMascota.csv') |


  @ActualizarName
  Scenario Outline: Actualizar nombre de mascota

    * json body = read('classpath:data/bodycreate.json')
    * set body.name = "<name>"
    Given url urlApi

    And request body
    When method PUT
    Then status 200
    And match response.name == "<name>"
    Examples:
      | read('classpath:data/DataMascotaupdate.csv') |

  @BuscarMascotaUpdate
  Scenario Outline: Buscar el nombre actualizado de la mascota
    * json body = read('classpath:data/bodycreate.json')
    Given url urlApi
    And path body.id
    When method GET
    Then status 200
    And match response.name == "<name>"
    Examples:
      | read('classpath:data/DataMascotaupdate.csv') |

  @Eliminarmascota

  Scenario Outline: Eliminar la mascota creada
    * json body = read('classpath:data/bodycreate.json')
    Given url urlApi
    And path body.id
    When method DELETE
    Then status 200
    Examples:
      | read('classpath:data/DataMascotaupdate.csv') |
