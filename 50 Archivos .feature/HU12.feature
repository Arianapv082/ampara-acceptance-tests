Feature: Realizar test interactivo de riesgo

  Como usuaria
  Quiero completar un test online
  Para identificar si estoy siendo víctima de violencia doméstica

  Scenario Outline: Completar test interactivo y recibir resultado
    Given que la usuaria accede al test de riesgo desde el navegador
    And responde las preguntas de manera interactiva:
      | Pregunta                         | Respuesta |
      | <pregunta1>                      | <resp1>   |
      | <pregunta2>                      | <resp2>   |
      | <pregunta3>                      | <resp3>   |
    When finaliza el test
    Then el sistema analiza las respuestas automáticamente
    And muestra el nivel de riesgo identificado junto con orientación y recursos de apoyo

    Examples:
      | pregunta1                                | resp1 | pregunta2                                 | resp2 | pregunta3                                  | resp3 | resultado esperado |
      | ¿Tu pareja controla tus salidas?         | No    | ¿Te insulta o humilla con frecuencia?     | No    | ¿Te impide comunicarte con familiares?     | No    | Riesgo Bajo        |
      | ¿Tu pareja controla tus salidas?         | Sí    | ¿Te insulta o humilla con frecuencia?     | Sí    | ¿Te ha agredido físicamente alguna vez?    | Sí    | Riesgo Alto        |

  Scenario: Riesgo bajo
    Given que la usuaria responde negativamente a la mayoría de preguntas
    When termina el test
    Then el sistema muestra recomendaciones preventivas
    And ofrece recursos de apoyo emocional y líneas de orientación

  Scenario: Riesgo alto
    Given que la usuaria responde afirmativamente a varias preguntas clave
    When finaliza el test
    Then el sistema muestra el nivel de riesgo alto
    And sugiere contactar de inmediato a un especialista o usar el botón de emergencia
