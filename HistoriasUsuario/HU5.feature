Feature: Acceder a listado de instituciones cercanas

  Como usuaria de Ampara
  Quiero acceder a un listado de instituciones cercanas
  Para saber dónde acudir en caso de emergencia o cuando necesite orientación psicológica o legal

  Scenario Outline: Búsqueda automática por ubicación 
    Given que la usuaria accede a la sección "Instituciones cercanas"
    When permite el acceso a su ubicación actual
    And selecciona la categoría de ayuda que necesita:
      | Distrito     | Tipo de ayuda      |  institución esperada  | distancia aprox. |
      | <distrito>   | <tipo>             |  <institución>         | <distancia>      |
    Then la aplicación muestra un listado de instituciones cercanas según su distrito
    And se visualizan datos de contacto, dirección y horario de atención

    Examples:
      | distrito               | tipo               | institución esperada                   | distancia aprox. |
      | Miraflores             | Apoyo psicológico  | Centro de Atención Mujer Segura        | 0.8 km           |
      | San Juan de Lurigancho | Apoyo legal        | Defensoría del Pueblo - SJL            | 1.5 km           |
      | Villa El Salvador      | Refugio temporal   | Casa Refugio Nueva Esperanza           | 2.1 km           |
      | Los Olivos             | Apoyo médico       | Centro de Salud Integral para Mujeres  | 0.6 km           |

  Scenario: Filtro por tipo de servicio
    Given que la usuaria busca una institución específica
    When aplica un filtro por tipo de ayuda 
    Then  el sistema muestra solo las instituciones que brindan ese servicio
    And mantiene visible la distancia aproximada desde su ubicación

  Scenario: Visualización en mapa
    Given que la usuaria consulta instituciones disponibles
    When selecciona la vista en mapa
    Then la app muestra los puntos geográficos de cada institución en un mapa interactivo
    And permite hacer clic en un punto para ver su información detallada

  Scenario: Llamada o contacto directo
    Given que la usuaria encuentra una institución en el listado
    When presiona el botón "Llamar" o "Contactar"
    Then el sistema inicia la llamada telefónica o abre el chat de contacto directo
    And muestra una notificación de seguridad con el mensaje “¿Deseas continuar?”