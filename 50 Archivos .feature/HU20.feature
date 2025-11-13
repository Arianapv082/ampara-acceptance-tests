Feature: Averiguar la visión y misión de la empresa

  Como usuaria
  Quiero saber cómo se creó el aplicativo
  Para saber cuales son sus metas

  Scenario Outline: Acceso exitoso a la sección Nosotros
    Given que la usuaria se encuentra en la página principal del aplicativo
    And visualiza el botón “Nosotros” 
    When presiona el botón “Nosotros”
    Then el sistema redirige correctamente a la sección “Nosotros”
    And se muestra la información institucional correspondiente:
      | Tipo de información | Descripción breve                                         |
      | <tipo_info>         | <descripcion>                                             |

    Examples:
      | ubicacion        | tipo_info  | descripcion                                                 |
      | página principal | Visión     | Presenta los objetivos a largo plazo del aplicativo Ampara  |
      | menú hamburguesa | Misión     | Explica el propósito de Ampara y cómo apoya a las usuarias  |
      | menú hamburguesa | Historia   | Narra cómo y por qué se creó la aplicación Ampara           |

  Scenario: Error al redirigir a la sección Nosotros
    Given que la usuaria se encuentra en la página principal
    When presiona el botón “Nosotros” y ocurre un error de redirección
    Then la aplicación muestra el mensaje “La página de Nosotros no está disponible en este momento”
    And se visualiza un enlace que permite regresar a la página principal
