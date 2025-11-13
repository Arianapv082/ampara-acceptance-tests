Feature: Foro anónimo de apoyo entre mujeres

  Como usuaria de Ampara
  Quiero participar en un foro anónimo
  Para compartir experiencias y recibir apoyo emocional de otras mujeres que han pasado por situaciones similares

  Scenario Outline: Publicación anónima 
    Given que la usuaria accede al foro anónimo de Ampara
    When redacta un mensaje con el siguiente contenido:
      | Título             | Mensaje                                     |
      | <titulo>           | <mensaje>                                   |
    And presiona el botón "Publicar"
    Then su publicación aparece en el foro sin mostrar su nombre real
    And otras usuarias pueden visualizarla y responder con mensajes de apoyo

    Examples:
      | titulo                  | mensaje                                               |
      | Necesito desahogarme    | Hoy me siento sola, pero quiero seguir adelante.      |
      | Cómo superaron el miedo | Me cuesta volver a confiar después de lo vivido.      |

  Scenario: Interacción con otras usuarias
    Given que la usuaria navega por el foro anónimo
    And encuentra una publicación con la que se siente identificada
    When escribe una respuesta de apoyo
    And presiona "Enviar respuesta"
    Then su comentario aparece como “Anónimo”
    And la autora del post recibe una notificación de apoyo en la app

  Scenario: Moderación del contenido
    Given que una publicación o comentario contiene lenguaje inapropiado
    When el sistema lo detecta automáticamente
    Then el mensaje se oculta temporalmente
    And la moderadora es notificada para revisar el contenido