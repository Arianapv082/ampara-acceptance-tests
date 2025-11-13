Feature: Directorio por distrito

  Como usuaria
  Quiero buscar líneas y centros por distrito
  Para encontrar apoyo cercano

  Scenario Outline: Búsqueda por distrito con filtro de tipo
    Given que la usuaria abre la sección "Directorio por distrito"
    And escribe el nombre de su distrito y activa un filtro de tipo de ayuda:
      | Distrito              | Tipo de ayuda   | Entidad encontrada      | <tipo>          |
      | <distrito>            | <tipo>          || <tipo>         | <tipo>         |
    When presiona el botón "Buscar"
    Then la aplicación muestra entidades del distrito que coinciden con el filtro
    And se listan con nombre, teléfono y horario de atención

    Examples:
      | distrito              | tipo          | entidad encontrada                       | teléfono   | horario          |
      | San Martín de Porres  | Psicológica   | Centro Integral Mujer y Familia           | 014523698  | Lunes a Viernes 8am - 6pm |
      | Miraflores            | Legal         | Defensoría de la Mujer - Sur Lima         | 016534210  | Lunes a Sábado 9am - 5pm  |
      | Comas                 | Refugio       | Casa Refugio Esperanza Viva              | 017421123  | 24/7                    |

  Scenario: Sin resultados o sin conexión
    Given que la usuaria busca el distrito “Punta Negra” con el filtro "Refugio"
    And no existen entidades que coincidan o el dispositivo está sin conexión
    When el sistema detecta esta situación
    Then se muestra un mensaje informativo con distritos alternativos de la provincia
    And se incluyen líneas nacionales como "Línea 100" para atención inmediata
