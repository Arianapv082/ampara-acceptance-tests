Feature: Enlace a Instagram

  Como usuaria
  Quiero averiguar sobre la cuenta de Instagram de Ampara
  Para poder visitarla y ver sus publicaciones, historias y campañas visuales de prevención

  Scenario Outline: Acceso exitoso al perfil oficial de Instagram
    Given que la usuaria se encuentra en la página principal del aplicativo
    And visualiza el ícono de Instagram disponible en el <ubicacion>
    When presiona el ícono de la red social Instagram
    Then el sistema redirige correctamente al perfil oficial de Ampara en Instagram
    And la usuaria puede explorar diferentes tipos de contenido visual publicado por la organización:
      | Tipo de contenido     | Ejemplo de publicación                                                |
      | <tipo_contenido>      | <ejemplo_publicacion>                                                 |

    Examples:
      | ubicacion        | tipo_contenido         | ejemplo_publicacion                                                   |
      | página principal | Historias destacadas   | “Consejos rápidos para identificar relaciones tóxicas #AmparaContigo” |
      | menú hamburguesa | Publicaciones          | “Infografía: 5 pasos para pedir ayuda de forma segura                 |
      | página principal | Reels informativos     | “Video corto sobre señales tempranas de violencia emocional”          |
      | menú hamburguesa | Campañas interactivas  | “Participa en nuestro reto #HablaConAmpara para generar conciencia”   |

  Scenario: Error al redirigir al perfil de Instagram
    Given que la usuaria se encuentra en la página principal
    When presiona el ícono de la red social Instagram y ocurre un error de redirección
    Then la aplicación muestra el mensaje “El perfil de Instagram no está disponible en este momento”
    And se visualiza un enlace que permite regresar a la página principal
