Feature: Recuperar contraseña

  Como usuaria
  Quiero recuperar mi contraseña por correo
  Para volver a acceder si la olvido

  Scenario Outline: Flujo completo de recuperación de contraseña
    Given que la usuaria se encuentra en la pantalla “Recuperar contraseña”
    And visualiza el campo de correo y el botón “Enviar enlace”
    When ingresa su dirección de correo: <correo>
    And presiona el botón “Enviar enlace”
    Then el sistema muestra el mensaje “Si el correo existe, te enviaremos un enlace para restablecer tu contraseña”
    And el estado del proceso se actualiza como <estado>
    And el sistema actúa según el resultado:
      | Estado del proceso | Acción del sistema                                                   |
      | <estado>           | <accion>                                                             |

    Examples:
      | correo                      | estado         | accion                                                              |
      | ana.torres@mail.com         | Enlace enviado | La usuaria recibe un correo con el enlace para restablecer la contraseña |
      | maria.luna@gmail.com        | Restablecido   | El sistema cierra todas las sesiones previas y muestra “Contraseña actualizada correctamente” |
      | valeria.rojas@outlook.com   | Expirado       | La app muestra “El enlace ha expirado” y ofrece generar uno nuevo     |

  Scenario: Enlace vencido
    Given que la usuaria intenta usar un enlace expirado
    When abre la página de restablecimiento
    Then la aplicación muestra el mensaje “El enlace ha expirado”
    And ofrece la opción “Generar nuevo enlace”
    And no permite continuar con la contraseña anterior
