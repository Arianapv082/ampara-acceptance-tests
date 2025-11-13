Feature: Registro anónimo opcional

  Como usuaria que teme ser identificada
  Quiero poder usar la plataforma de manera anónima
  Para recibir información y orientación sin registrar mis datos personales

  Scenario Outline: Acceso en modo anónimo desde celular
    Given que la usuaria ingresa al sitio web de Ampara desde su teléfono
    When selecciona la opción “Usar sin registrarme” en la pantalla de inicio y visualiza la siguiente información:
      | Elemento visible           | Acción esperada        |
      | <elemento>                 | <accion>               |
    Then el sistema permite acceder al contenido educativo, test de riesgo y recursos informativos
    And no solicita correo electrónico ni datos personales

    Examples:
      | elemento                     | accion                                                      |
      | Botón “Usar sin registrarme” | Permitir el ingreso al modo anónimo sin pedir registro      |
      | Recursos informativos        | Mostrar artículos y guías educativas sin requerir cuenta    |
      | Test de riesgo               | Permitir responder el test sin guardar información sensible |

  Scenario: Chat anónimo con un profesional
    Given que la usuaria ha ingresado en modo anónimo
    When inicia un chat de orientación con un psicólogo
    Then el sistema asigna un identificador temporal único
    And permite mantener la conversación sin revelar su identidad real
    And muestra un aviso: “Estás en modo anónimo. Tus datos personales no serán almacenados.”
