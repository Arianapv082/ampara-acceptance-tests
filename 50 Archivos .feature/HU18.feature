Feature: Ingresar a la sección Servicios

  Como usuaria
  Quiero saber sobre los servicios que me brinda el aplicativo
  Para poder beneficiarme de ellos

  Scenario Outline: Acceso exitoso a la sección Servicios
    Given que la usuaria se encuentra en la página principal del aplicativo
    And visualiza el botón “Servicios” disponible en la parte superior del menú principal o en la barra de navegación
    When presiona el botón “Servicios”
    Then el sistema redirige correctamente a la sección “Servicios”
    And se muestran las descripciones de los servicios brindados por Ampara, incluyendo nombre, breve descripción y un botón “Conocer más”

    Examples:
      | Ubicación del botón | Servicio destacado                       | Descripción breve                                                                     | Elemento visual                      |
      | Menú superior       | Acompañamiento y Prevención              | Atención psicológica y orientación personalizada para mujeres en situación de riesgo  | Icono + Botón “Conocer más”        |
      | Menú superior       | Emergencia y Ayuda Inmediata             | Acceso a atención inmediata y silenciosa mediante el botón de emergencia              | Icono + Botón “Conocer más”        |
      | Página principal    | Información y Educación                  | Recursos informativos sobre prevención, derechos y contactos de ayuda                 | Icono + Botón “Conocer más”        |

  Scenario: Error al redirigir a la sección Servicios
    Given que la usuaria se encuentra en la página principal
    When presiona el botón “Servicios” y ocurre un error de redirección
    Then la aplicación muestra el mensaje “La página no está disponible en este momento”
    And se visualiza un enlace que permite regresar a la página principal
