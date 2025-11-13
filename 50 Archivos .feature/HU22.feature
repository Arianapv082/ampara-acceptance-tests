Feature: Enlace a Twitter

  Como usuaria
  Quiero averiguar sobre la cuenta de Twitter de Ampara
  Para poder visitarla y conocer las publicaciones, mensajes y novedades compartidas por la organización

  Scenario Outline: Acceso exitoso al perfil oficial de Twitter
    Given que la usuaria se encuentra en la página principal del aplicativo
    And visualiza el ícono de Twitter disponible en el <ubicacion>
    When presiona el ícono de la red social Twitter
    Then el sistema redirige correctamente al perfil oficial de Ampara en Twitter
    And la usuaria puede visualizar diferentes tipos de tweets publicados por la organización:
      | Tipo de publicación      | Ejemplo de tweet                                                     |
      | <tipo_publicacion>       | <ejemplo_tweet>                                                      |

    Examples:
      | ubicacion        | tipo_publicacion         | ejemplo_tweet                                                                |
      | página principal | Campañas sociales        | “#JuntasSomosMásFuertes Conoce cómo apoyar a mujeres en riesgo.              |
      | menú hamburguesa | Noticias institucionales | “Ampara lanza nueva función de chat anónimo para atención inmediata.”        |

  Scenario: Error al redirigir al perfil de Twitter
    Given que la usuaria se encuentra en la página principal
    When presiona el ícono de la red social Twitter y ocurre un error de redirección
    Then la aplicación muestra el mensaje “El perfil de Twitter no está disponible en este momento”
    And se visualiza un enlace que permite regresar a la página principal
