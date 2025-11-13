Feature: Registrar el progreso de cada caso atendido

  Como psicólogo profesional
  Quiero registrar el progreso de cada caso atendido
  Para ofrecer acompañamiento continuo, dar seguimiento adecuado y medir los resultados del proceso de apoyo a las usuarias

  Scenario Outline: Creación de registro del caso
    Given que el psicólogo inicia una nueva atención
    When abre la ficha de la usuaria en su panel y añade la siguiente información:
      | Nombre de usuaria | Fecha de sesión | Observaciones iniciales        | Recomendaciones                 |
      | <nombre>          | <fecha>         | <observaciones>                | <recomendaciones>               |
    And presiona el botón "Guardar registro"
    Then el sistema crea un nuevo registro del caso
    And muestra el mensaje “Registro creado exitosamente”

    Examples:
      | nombre          | fecha       | observaciones                                | recomendaciones                           |
      | Ana Torres      | 10/11/2025  | Presenta mejora en su estabilidad emocional. | Continuar sesiones semanales.             |
      | Lucía Fernández | 12/11/2025  | Expresa ansiedad leve y cansancio.           | Realizar ejercicios de relajación diaria. |
      | Carla Jiménez   | 13/11/2025  | Aumenta su confianza para comunicarse.       | Refuerzo positivo en cada sesión.         |

  Scenario: Actualización del progreso
    Given que la usuaria continúa su proceso de acompañamiento
    When el psicólogo actualiza el caso con nuevas notas o recomendaciones
    Then la información se guarda en tiempo real
    And queda disponible en el historial del caso

  Scenario: Confidencialidad de datos
    Given que los casos contienen información sensible
    When un usuario no autorizado intenta acceder al registro
    Then el sistema restringe el acceso
    And muestra un mensaje de error indicando "Acceso denegado: información confidencial"
