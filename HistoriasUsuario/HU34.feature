Feature: Página de testimonios verificados

  Como visitante de la plataforma web
  Quiero leer testimonios verificados de mujeres que superaron la violencia
  Para inspirarme y sentirme acompañada en mi proceso

  Scenario Outline: Envío de testimonio anónimo
    Given que una usuaria desea compartir su historia
    When completa el formulario de testimonio con los siguientes datos:
      | Alias ficticio | Historia breve |
      | <alias>        | <historia>     |
    And presiona el botón “Enviar”
    Then el sistema registra el testimonio de forma anónima
    And muestra el mensaje “Tu historia ha sido enviada para revisión”
    And el testimonio queda pendiente de verificación por el equipo de moderación

    Examples:
      | alias       | historia                                                                        |
      | “Luna Azul” | “Gracias a Ampara, encontré ayuda psicológica y pude volver a sentirme segura.” |
      | “María V.”  | “Decidí pedir ayuda y hoy vivo una vida libre de violencia.”                    |

  Scenario: Visualización de testimonios verificados
    Given que una visitante accede a la sección de Testimonios
    When ingresa a la página
    Then el sistema muestra únicamente los testimonios verificados y aprobados por el equipo de moderación
    And cada testimonio muestra solo un alias ficticio, sin datos personales
    And la interfaz presenta los testimonios en tarjetas con diseño limpio y legible
