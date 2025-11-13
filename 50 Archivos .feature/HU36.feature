Feature: Cierre de sesión del psicólogo

  Como psicólogo que utiliza la plataforma
  Quiero poder cerrar mi sesión de forma segura
  Para proteger mi cuenta y evitar accesos no autorizados

  Scenario Outline: Confirmación de cierre de sesión
    Given que el psicólogo desea salir de la plataforma
    When hace clic en el botón “Cerrar sesión” ubicado en el menú del perfil
    And aparece un cuadro de confirmación con las opciones “Cancelar” y “Confirmar cierre de sesión”
    Then el sistema muestra el mensaje “¿Estás seguro de que deseas cerrar sesión?”
    And el psicólogo puede elegir si desea continuar o permanecer en su sesión

    Examples:
      | opción seleccionada      | resultado esperado                                          |
      | Cancelar                 | El cuadro se cierra y la sesión continúa activa             |
      | Confirmar cierre de sesión | Se procede con el cierre de sesión                        |

  Scenario: Cierre de sesión exitoso
    Given que el psicólogo confirma el cierre de sesión
    When selecciona “Confirmar cierre de sesión”
    Then el sistema muestra el mensaje “Sesión cerrada con éxito”
    And redirige automáticamente al inicio de sesión de la plataforma
