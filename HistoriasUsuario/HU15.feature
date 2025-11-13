Feature: Feedback anónimo post-sesión

  Como usuaria
  Quiero calificar la atención de forma anónima
  Para contribuir a mejorar el servicio sin revelar mi identidad

  Scenario Outline: Calificación rápida al finalizar una sesión
    Given que la usuaria ha finalizado una sesión de atención (chat, llamada o videollamada)
    And aparece el mensaje “Calificar atención”
    When selecciona una puntuación del 1 al 5 y pulsa “Enviar”:
      | Tipo de sesión | Calificación |
      | <tipo>         | <puntuacion> |
    Then el sistema registra la calificación de forma anónima
    And muestra el mensaje “Gracias por tu feedback”
    And no permite volver a calificar esa sesión

    Examples:
      | tipo        | puntuacion |
      | Chat        | 4/5        |
      | Llamada     | 5/5        |
      | Videollamada| 3/5        |

  Scenario: Calificación con comentario
    Given que la usuaria ha terminado una sesión
    And aparece la ventana de calificación
    When elige una puntuación de 5/5, escribe un comentario opcional y envía
    Then el sistema guarda la calificación y el comentario sin asociarlos a su identidad
    And muestra el mensaje de confirmación “Gracias por tu feedback”

  Scenario: Omitir calificación
    Given que aparece el modal de calificación al finalizar la sesión
    When la usuaria presiona el icono de cerrar
    Then el sistema descarta la calificación
    And la usuaria regresa a la pantalla anterior sin guardar ningún registro
