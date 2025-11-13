Feature: Eliminación de contacto de emergencia

  Como usuario registrado
  Quiero poder eliminar un contacto de mi información de contacto de emergencia
  Para mantener actualizada la lista y evitar datos innecesarios

  Scenario Outline: Confirmación de eliminación de contacto
    Given que el usuario desea eliminar un contacto de emergencia
    When selecciona un contacto y elige la opción “Eliminar contacto”
    And el sistema muestra el siguiente mensaje de confirmación:
      | Mensaje de confirmación                            | Opciones disponibles            |
      | <mensaje>                                          | <opciones>                      |
    Then el usuario puede decidir si continuar o cancelar la eliminación

    Examples:
      | mensaje                                              | opciones                       |
      | ¿Estás seguro de que quieres eliminar este contacto? | Eliminar contacto / Cancelar   |

  Scenario: Eliminación exitosa del contacto
    Given que el usuario confirma la eliminación
    When selecciona “Eliminar contacto”
    Then el sistema elimina el contacto de emergencia del registro
    And muestra el mensaje “Contacto eliminado correctamente.”
    And la lista actualizada se muestra sin el contacto eliminado
