Feature: Cerrar sesión

  Como usuaria
  Quiero cerrar sesión
  Para proteger mi cuenta en dispositivos compartidos

  Scenario Outline: Confirmación de cierre de sesión
    Given que la usuaria tiene una sesión activa en el aplicativo
    And visualiza la opción “Cerrar sesión” en el menú de perfil
    When selecciona dicha opción
    Then el sistema muestra un mensaje de confirmación con las siguientes opciones:
      | Mensaje de confirmación                         | Opciones disponibles           |
      | <mensaje>                                       | <opciones>                     |

    Examples:
      | mensaje                                  | opciones                         |
      | ¿Estás segura de que deseas cerrar sesión? | Confirmar / Cancelar           |

  Scenario: Cierre exitoso
    Given que la usuaria confirma el cierre de sesión
    When selecciona “Confirmar”
    Then el sistema finaliza la sesión actual
    And elimina los datos temporales de la usuaria
    And redirige a la pantalla principal pública
    And muestra el mensaje “Sesión cerrada correctamente.”

  Scenario: Intento de acceso posterior al cierre
    Given que la usuaria ya ha cerrado sesión
    When presiona el botón “Atrás” o recarga la página
    Then la aplicación no permite acceder a pantallas privadas
    And permanece en la vista pública del aplicativo
