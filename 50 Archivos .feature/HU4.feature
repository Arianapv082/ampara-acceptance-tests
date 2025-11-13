Feature: Chat seguro con psicólogos especialistas

  Como usuaria de Ampara
  Quiero comunicarme con psicólogos o especialistas
  Para recibir apoyo emocional y orientación segura en situaciones de violencia

  Scenario Outline: Inicio de chat anónimo exitoso
    Given que la usuaria desea recibir orientación
    When accede al modo "Chat anónimo" y elige un alias:
      | Alias    | Mensaje         |
      | <alias>  | <Nro. Mensaje>  |
    Then el sistema crea una sesión segura
    And la conecta con una psicóloga disponible
    And muestra solo el alias y el rol profesional

    Examples:
      | alias     | Mensaje        |
      | Esperanza | Nro.mensajes 4 |
      | LunaLibre | Nro.mensajes 2 |
      | Valiente  | Nro.mensajes 6 |

  Scenario: Inicio de conversación
    Given que la usuaria necesita apoyo psicológico
    When accede a la sección "Chat de ayuda"
    Then se abre una conversación privada y segura para iniciar la orientación
    And la usuaria puede enviar el primer mensaje al profesional

  Scenario: Comunicación anónima
    Given que la usuaria prefiere mantener su identidad protegida
    When inicia el chat con el modo anónimo activado
    Then el sistema muestra solo su seudónimo al especialista
    And el profesional no tiene acceso a los datos reales de la usuaria

  Scenario: Atención en tiempo real
    Given que la usuaria está atravesando una situación crítica
    When envía un mensaje de emergencia dentro del chat
    Then el profesional recibe una notificación prioritaria
    And el sistema marca la conversación como urgente para respuesta inmediata