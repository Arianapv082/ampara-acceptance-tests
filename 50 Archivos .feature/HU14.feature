Feature: Búsqueda y filtros en foro

  Como usuaria
  Quiero buscar y filtrar publicaciones del foro
  Para encontrar apoyo por tema o cercanía

  Scenario Outline: Buscar publicaciones por palabra y tema
    Given que la usuaria accede al foro de Ampara
    And visualiza el buscador y los filtros disponibles (Tema, Orden, Distrito)
    When escribe una palabra clave y activa un tema específico:
      | Palabra clave | Tema seleccionado    | Orden     |
      | <palabra>     | <tema>               | <orden>   |
    Then se muestran publicaciones que contienen la palabra y pertenecen al tema
    And las publicaciones aparecen ordenadas según la opción seleccionada
    And cada resultado muestra alias anónimo, tema, distrito (si aplica), hora y número de reacciones

    Examples:
      | Palabra   | Tema             | Orden         |
      | ansiedad  | Apoyo emocional  | Recientes     |
      | violencia | Consejos legales | Populares     |
      | estrés    | Autoestima       | Sin responder |

  Scenario: Filtrar por distrito y ordenar resultados
    Given que la usuaria desea buscar publicaciones por ubicación
    And selecciona el distrito “San Martín de Porres”
    And el orden “Sin responder”
    When aplica los filtros
    Then se muestran publicaciones del distrito elegido que aún no tienen respuestas
    And se mantiene visible el alias anónimo y los datos no personales de las usuarias

  Scenario: Sin resultados con sugerencias
    Given que la usuaria aplica filtros que no devuelven coincidencias
    When el sistema muestra el mensaje “No encontramos publicaciones con estos criterios”
    Then la usuaria desmarca uno de los chips de tema
    And la lista se actualiza automáticamente
    And si existen coincidencias, se muestran las publicaciones encontradas
