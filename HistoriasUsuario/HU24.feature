Feature: Enlace a YouTube

  Como usuaria
  Quiero averiguar sobre la cuenta de YouTube de Ampara
  Para poder visitarla y ver los videos, testimonios y campañas informativas que publica la organización

  Scenario Outline: Acceso exitoso al canal oficial de YouTube
    Given que la usuaria se encuentra en la landing page principal del aplicativo
    And visualiza el ícono de YouTube disponible en el <ubicacion>
    When presiona el ícono de la red social YouTube
    Then el sistema redirige correctamente al canal oficial de Ampara en YouTube
    And la usuaria puede explorar los siguientes tipos de videos disponibles en el canal:
      | Tipo de video            | Ejemplo de contenido                                                           |
      | <tipo_video>             | <ejemplo_contenido>                                                            |

    Examples:
      | ubicacion           | tipo_video              | ejemplo_contenido                                                             |
      | footer              | Testimonios reales      | “Historias de superación: Mujeres que encontraron apoyo en Ampara.”           |
      | menú principal      | Campañas informativas   | “Campaña: Cómo pedir ayuda de forma segura.”                  |
      | sección contacto    | Guías de orientación    | “Cómo identificar señales tempranas de violencia doméstica.”                  |
      | landing page        | Charlas educativas      | “Conversatorio con psicólogas sobre acompañamiento emocional.”                |

  Scenario: Error al redirigir al canal de YouTube
    Given que la usuaria se encuentra en la página principal
    When presiona el ícono de la red social YouTube y ocurre un error de redirección
    Then la aplicación muestra el mensaje “El canal de YouTube no está disponible en este momento”
    And se visualiza un enlace que permite regresar a la página principal
