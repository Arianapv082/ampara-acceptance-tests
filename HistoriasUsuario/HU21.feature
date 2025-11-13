Feature: Enlace a Facebook

  Como usuaria
  Quiero averiguar sobre la cuenta de Facebook de Ampara
  Para poder visitarla y conocer las publicaciones, campañas y novedades del aplicativo

  Scenario Outline: Acceso exitoso al perfil oficial de Facebook
    Given que la usuaria se encuentra en la página principal del aplicativo
    And visualiza el ícono de Facebook
    When presiona el ícono de la red social Facebook
    Then el sistema redirige correctamente al perfil oficial de Ampara en Facebook
    And la usuaria puede visualizar publicaciones como:
      | Tipo de publicación         | Descripción breve                                                |
      | <tipo_publicacion>          | <descripcion>                                                    |

    Examples:
      | tipo_publicacion        | descripcion                                                                |
      | Campaña informativa     | “Ampara lanza su nueva función de botón de emergencia silencioso.”         |
      | Testimonio de usuaria   | “Gracias a Ampara pude recibir ayuda emocional cuando más lo necesitaba.”  |
      | Consejos de seguridad   | “Cinco pasos para identificar señales de violencia y pedir apoyo seguro.”  |
      | Evento comunitario      | “Taller gratuito de orientación psicológica este sábado 10 AM.”            |

  Scenario: Error al redirigir al perfil de Facebook
    Given que la usuaria se encuentra en la página principal
    When presiona el ícono de la red social Facebook y ocurre un error de redirección
    Then la aplicación muestra el mensaje “El perfil de Facebook no está disponible en este momento”
    And se visualiza un enlace que permite regresar a la página principal
