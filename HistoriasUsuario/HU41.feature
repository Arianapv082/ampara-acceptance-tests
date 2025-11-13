Feature: Eliminación de chat de forma permanente

  Como usuario de la plataforma
  Quiero poder eliminar de forma permanente un chat con un psicólogo
  Para mantener mi privacidad y limpiar conversaciones que ya no deseo conservar

  Scenario Outline: Confirmación de eliminación de chat
    Given que el usuario desea eliminar un chat con un psicólogo
    When selecciona el chat y presiona la opción “Eliminar chat”
    And el sistema muestra el siguiente mensaje de confirmación:
      | Mensaje de confirmación                                       | Opciones disponibles    |
      | <mensaje>                                                     | <opciones>              |
    Then el usuario puede decidir si desea continuar o cancelar la acción

    Examples:
      | mensaje                                                              | opciones                 |
      | ¿Estás seguro de que quieres eliminar este chat de forma permanente? | Eliminar chat / Cancelar |

  Scenario: Eliminación permanente del chat
    Given que el usuario confirma la eliminación del chat
    When selecciona “Eliminar chat”
    Then el sistema elimina la conversación de forma definitiva e irrecuperable
    And muestra el mensaje “Chat eliminado permanentemente.”
    And el chat desaparece de la lista de conversaciones en la sección de ayuda
