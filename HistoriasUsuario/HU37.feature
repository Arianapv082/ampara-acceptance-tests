Feature: Guardar conversación de ayuda

  Como usuaria
  Quiero guardar el historial de mi conversación con el especialista
  Para poder revisarla más adelante o compartirla con otra profesional si es necesario

  Scenario Outline: Guardado automático de conversación
    Given que la usuaria finaliza una sesión con el especialista
    When la conversación termina
    Then el sistema guarda automáticamente el historial cifrado en su perfil
    And garantiza la confidencialidad de los datos mediante encriptación de extremo a extremo

    Examples:
      | tipo_sesion | estado_final | resultado_esperado                                 |
      | Chat        | Finalizada   | Historial guardado y cifrado en perfil de usuaria  |
      | Llamada     | Finalizada   | Transcripción o resumen almacenado de forma segura |
      | Videollamada| Finalizada   | Registro cifrado disponible solo para la usuaria   |

  Scenario: Consulta del historial
    Given que la usuaria inicia sesión correctamente
    When accede a la sección “Historial de conversaciones”
    Then puede visualizar sus sesiones anteriores sin posibilidad de modificarlas
    And el sistema muestra la fecha, tipo de sesión y nombre del especialista en formato anonimizado
