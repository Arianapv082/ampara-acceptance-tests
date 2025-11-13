Feature: Acceder a noticias sobre violencia doméstica

  Como usuaria
  Quiero informarme de las últimas noticias sobre la aplicación o sobre la violencia doméstica
  Para mantenerme informada

  Scenario Outline: Acceso exitoso a la sección Noticias
    Given que la usuaria se encuentra en la página principal del aplicativo
    And visualiza el botón “Noticias” disponible en el menú superior o menú hamburguesa
    When presiona el botón “Noticias”
    Then el sistema redirige correctamente a la sección “Noticias”
    And se muestran las publicaciones más recientes según el tipo de contenido seleccionado:
      | Tipo de noticia             | Descripción breve                                  |
      | <tipo_noticia>              | <descripcion>                                      |

    Examples:
      | tipo_noticia                | descripcion                                                                 |
      | Campañas de prevención      | Ministerio lanza nueva campaña “Vivir sin miedo” para prevenir la violencia |
      | Historias de superación     | Testimonios de mujeres que lograron reconstruir su vida con apoyo psicológico |
      | Cambios legales             | Se aprueba nueva ley para fortalecer la protección de víctimas de violencia doméstica |
      | Actualizaciones de Ampara   | La app Ampara lanza su nueva función de chat anónimo con profesionales |

  Scenario: Error al redirigir a la sección Noticias
    Given que la usuaria se encuentra en la página principal
    When presiona el botón “Noticias” y ocurre un error de redirección
    Then la aplicación muestra el mensaje “La página de Noticias no está disponible en este momento”
    And se visualiza un enlace que permite regresar a la página principal
