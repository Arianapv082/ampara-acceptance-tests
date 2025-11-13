Feature: Elegir canal en “Hablar ahora”

  Como usuaria
  Quiero elegir entre chat anónimo, llamada o videollamada
  Para recibir ayuda inmediata según mi comodidad

  Scenario Outline: Iniciar chat anónimo exitosamente
    Given que la usuaria está en la sección “Hablar ahora” y hay profesionales disponibles
    And visualiza las tres opciones: Chat anónimo, Llamada segura y Videollamada con sus tiempos estimados
    When selecciona "Chat anónimo" e ingresa un alias válido:
      | Alias    | Tiempo estimado | Profesional disponible |
      | <alias>  | <tiempo>        | <profesional>          |
    Then se abre la sala de chat mostrando el alias de la usuaria
    And el nombre o alias del profesional
    And un mensaje de bienvenida que indica que la conversación es segura y confidencial

    Examples:
      | alias      | tiempo  | profesional          |
      | Valiente   | 2 min   | Psic. Daniela Ruiz   |
      | Esperanza  | 1 min   | Psic. Julio Ramos    |
      | LuzClara   | 3 min   | Psic. Fernanda Vega  |

  Scenario: Llamada segura con permisos otorgados
    Given que la usuaria elige la opción “Llamada segura”
    And otorga permiso de micrófono al sistema
    When la llamada inicia
    Then se muestra el estado “Conectando / En llamada”
    And si la llamada falla, la aplicación ofrece cambiar al modo chat

  Scenario: Videollamada con permisos denegados o sin disponibilidad
    Given que la usuaria selecciona la opción “Videollamada”
    And deniega el acceso a la cámara, micrófono o no hay profesionales disponibles en ese momento
    When el sistema detecta esta situación
    Then muestra un aviso con el motivo
    And ofrece las opciones: activar permisos, esperar en cola, cambiar a llamada o cambiar a chat
