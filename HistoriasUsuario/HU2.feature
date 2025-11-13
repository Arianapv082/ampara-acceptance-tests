Feature: Activar el botón de emergencia silencioso

  Como mujer víctima de violencia doméstica
  Quiero activar un botón de emergencia silencioso
  Para pedir ayuda sin alertar a mi agresor

  Scenario Outline: Activación exitosa del botón de emergencia
    Given que la usuaria se encuentra en una situación de peligro
    And tiene la aplicación Ampara abierta en su dispositivo móvil
    When presiona el botón de emergencia silencioso desde la pantalla principal
    Then se envía una alerta inmediata a sus contactos y autoridades
    And la notificación se realiza sin emitir sonidos ni vibraciones
    And el sistema registra la hora y ubicación del evento

    Examples:
      | ubicacion actual       | contacto principal | respuesta esperada                     |
      | Lima Metropolitana     | Policía Nacional   | Alerta recibida en menos de 5 minutos  |
      | San Juan de Lurigancho | Hermana            | Contacto notificado de inmediato       |

  Scenario: Activación accidental del botón de emergencia
    Given que la usuaria activa por error el botón de emergencia
    When se muestra una ventana de confirmación de envío
    And la usuaria selecciona “Cancelar”
    Then la alerta no se envía
    And el sistema registra el intento sin notificar a los contactos

  Scenario: Fallo de conexión al activar el botón
    Given que la usuaria no tiene acceso a internet
    When presiona el botón de emergencia
    Then el sistema envía un SMS con mensaje de auxilio
    And coordenadas GPS a los contactos registrados