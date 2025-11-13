Feature: Consultar qué es AMPARA

  Como mujer que busca ayuda frente a una situación de violencia
  Quiero encontrar una pregunta rápida que me explique de forma clara qué es AMPARA
  Para entender cómo puede ayudarme y sentir confianza al usar la plataforma

  Scenario Outline: Lectura de la descripción en la web
    Given que la usuaria entra a la sección de preguntas frecuentes
    When selecciona la pregunta “¿Qué es AMPARA?” y visualiza el siguiente contenido:
      | Pregunta        | Respuesta breve                                                                                     |
      | <pregunta>      | <respuesta>                                                                                         |
    And la respuesta se muestra en lenguaje claro y empático, sin tecnicismos
    Then la usuaria comprende el propósito principal de AMPARA y cómo puede ayudarla

    Examples:
      | pregunta          | respuesta                                                                                           |
      | ¿Qué es AMPARA?   | AMPARA es una plataforma de apoyo confidencial para mujeres que enfrentan situaciones de violencia. |
      | ¿Cómo me ayuda?   | Te conecta con especialistas y recursos de orientación psicológica, legal y emocional.              |

  Scenario: Búsqueda de información rápida
    Given que la usuaria necesita saber rápidamente de qué trata AMPARA
    When utiliza el buscador o navega por la lista de preguntas frecuentes
    Then encuentra fácilmente la pregunta “¿Qué es AMPARA?”
    And puede leer la respuesta sin complicaciones ni lenguaje técnico
