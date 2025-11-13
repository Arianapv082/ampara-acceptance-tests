Feature: Alertas automáticas al psicólogo

  Como psicólogo profesional
  Quiero recibir alertas automáticas en la plataforma cuando una usuaria active el botón de emergencia
  Para brindar contención emocional o canalización 

  Scenario Outline: Emergencia activada
    Given que una usuaria presiona el botón de emergencia en la web o aplicación móvil
    When el sistema recibe la señal de alerta con los siguientes datos:
      | Tipo de alerta  | Información compartida  |
      | <tipo>          | <informacion>           |
    Then el panel del psicólogo muestra una notificación visual y sonora con el mensaje “Emergencia activa”
    And el sistema registra la fecha y hora exacta del evento

    Examples:
      | tipo       | informacion                         |
      | Botón SOS  | Nombre ficticio y ubicación parcial |
      | Botón SOS  | Solo alias (modo anónimo)           |

  Scenario Outline: Registro del evento
    Given que se envio una aleta
    When el psicólogo la revisa en su panel profesional y selecciona “Marcar como atendida”
    Then el sistema actualiza el estado del registro con los siguientes datos:
      | Estado actual | Acción del psicólogo | Confirmación visible  |
      | <estado>       | <accion>             | <confirmacion>       |

    Examples:
      | estado    | accion               | confirmacion            |
      | Atendida  | Marcar como revisada | “Alerta atendida”       |
      | Pendiente | Sin acción aún       | “En espera de revisión” |
