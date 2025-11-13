Feature: Bandeja de solicitudes para psicólogo

  Como psicólogo
  Quiero ver y aceptar o derivar solicitudes
  Para gestionar mi carga de trabajo

  Scenario Outline: Aceptar una solicitud 
    Given que el psicólogo ha iniciado sesión en su panel profesional
    And visualiza la bandeja de solicitudes con los siguientes datos:
      | Alias de usuaria | Canal    | Motivo breve               | Tiempo en cola |
      | <alias>          | <canal>  | <motivo>                   | <tiempo>       |
    When pulsa el botón "Aceptar" en una solicitud
    Then el sistema abre de inmediato el canal elegido como chat, llamada o videollamada
    And la solicitud desaparece de la lista de pendientes

    Examples:
      | alias      | canal       | motivo                         | tiempo  |
      | Valiente01 | Chat        | Necesito orientación emocional | 2 min   |
      | LuzClara   | Llamada     | Crisis de ansiedad             | 1 min   |
      | Esperanza  | Videollamada| Seguimiento de sesión anterior | 3 min   |

  Scenario: Derivar una solicitud
    Given que el psicólogo necesita canalizar un caso a otra entidad
    When pulsa "Derivar", elige una institución y escribe una nota breve
    Then el sistema confirma la acción con el mensaje "Derivación enviada"
    And la solicitud es removida de la bandeja del profesional

  Scenario: Sin solicitudes 
    Given que no existen solicitudes nuevas en la bandeja
    When el psicólogo abre la sección de solicitudes
    Then se muestra el mensaje "No tienes solicitudes por ahora"
    And aparece un botón "Actualizar" para refrescar la lista
