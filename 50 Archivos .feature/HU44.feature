Feature: Servicio de Acompañamiento y Prevención

  Como víctima de violencia doméstica
  Quiero poder recibir una atención más personalizada donde me hagan acompañamiento y consejos de prevención
  Para poder sentirme más segura

  Scenario Outline: Acceso correcto al servicio de acompañamiento
    Given que la usuaria se encuentra en la sección “Servicios”
    When selecciona el botón “Conocer más” debajo de la línea “Servicio de Acompañamiento y Prevención” y visualiza la siguiente información:
      | Elemento visible          | Acción esperada                                        |
      | <elemento>                | <accion>                                               |
    Then el sistema redirige correctamente a la página con las instrucciones del servicio
    And la usuaria puede visualizar los pasos para solicitar acompañamiento y recibir consejos de prevención

    Examples:
      | elemento                        | accion                                                                |
      | Botón “Conocer más”             | Redirigir a la página del servicio de acompañamiento                  |
      | Texto “Servicio de Acompañamiento y Prevención” | Mostrar descripción y beneficios del servicio         |

  Scenario: Fallo de redirección
    Given que la usuaria está en la sección “Servicios”
    When selecciona el botón “Conocer más” y ocurre un fallo de redirección
    Then el sistema muestra una pantalla de error con el mensaje “No se pudo acceder al servicio en este momento.”
    And se muestra un enlace activo para regresar a la sección “Servicios”
