Feature: Seguimiento emocional semanal

  Como usuaria en acompañamiento psicológico
  Quiero recibir un breve cuestionario semanal sobre mi estado emocional
  Para reflexionar sobre mi avance y ayudar a mi psicólogo a comprender mi evolución

  Scenario Outline: Completar cuestionario desde el móvil
    Given que la usuaria ha iniciado sesión en su dispositivo móvil
    When recibe una notificación a su correo electrónico con el siguiente contenido:
      | Medio de envío | Tipo de recordatorio  | Enlace incluido |
      | <medio>         | <tipo>               | <enlace>        |
    And accede al enlace proporcionado
    Then el sistema abre un cuestionario breve en la plataforma Ampara
    And las respuestas se guardan de forma encriptada en la base de datos

    Examples:
      | medio              | tipo                 | enlace                  |
      | Correo electrónico | Recordatorio semanal | ampara.com/cuestionario |

  Scenario Outline: Visualización de resultados por el psicólogo
    Given que la usuaria ha completado varios cuestionarios semanales
    When el psicólogo inicia sesión en su panel profesional
    Then el sistema muestra un resumen emocional con los siguientes indicadores:
      | Indicador emocional | Estado mostrado |
      | <indicador>         | <estado>        |
    And permite identificar mejoras o señales de alerta

    Examples:
      | indicador       | estado       |
      | Estado de ánimo | En mejora    |
      | Estrés          | Moderado     |
      | Ansiedad        | Disminuyendo |

  Scenario: Mensaje motivacional tras completar el cuestionario
    Given que la usuaria ha finalizado el cuestionario semanal
    When el sistema procesa sus respuestas
    Then se muestra un mensaje motivacional adaptado a su estado emocional
    And se registra la fecha y hora de finalización
