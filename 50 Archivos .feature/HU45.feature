Feature: Servicio de Emergencia y Ayuda Inmediata

  Como víctima de violencia doméstica
  Quiero poder recibir ayuda inmediata y de manera silenciosa
  Para poder sentirme más segura

  Scenario Outline: Acceso correcto al servicio de emergencia
    Given que la usuaria se encuentra en la sección “Servicios”
    When selecciona el botón “Conocer más” debajo de la línea “Servicios de Emergencia y Ayuda Inmediata” y visualiza la siguiente información:
      | Elemento visible                  | Acción esperada                                         |
      | <elemento>                        | <accion>                                                |
    Then el sistema redirige correctamente a la página con las instrucciones del servicio
    And la usuaria puede visualizar los pasos para activar la ayuda inmediata de forma silenciosa y segura

    Examples:
      | elemento                                         | accion                                                  |
      | Botón “Conocer más”                              | Redirigir a la página de instrucciones del servicio     |
      | Texto “Servicio de Emergencia y Ayuda Inmediata” | Mostrar información clara sobre el funcionamiento y alcance del servicio |

  Scenario: Fallo de redirección
    Given que la usuaria está en la sección “Servicios”
    When selecciona el botón “Conocer más” y ocurre un fallo de redirección
    Then el sistema muestra una pantalla de error con el mensaje:
      “No se pudo acceder al servicio en este momento.”
    And se muestra un enlace activo para regresar a la sección “Servicios”
