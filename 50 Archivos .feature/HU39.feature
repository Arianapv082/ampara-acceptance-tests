Feature: Visualización detallada de favoritos por categoría

  Como usuario anónimo
  Quiero ver los favoritos de todas las instituciones
  Para conocer el contenido más popular sin registrarme

  Scenario Outline: Visualización de favoritos globales
    Given que el usuario no ha iniciado sesión
    When accede a la sección “Favoritos” desde la página principal y visualiza la siguiente información:
      | Categoría        | Elemento destacado                | Descripción breve          |
      | <categoria>      | <elemento>                        | <descripcion>              |
    Then el sistema muestra una lista con los elementos más guardados por otros usuarios
    And los organiza por popularidad, mostrando nombre y descripción visibles

    Examples:
      | categoria     | elemento                  | descripcion                                                    |
      | Psicología    | Centro Mujer Segura       | Espacio de apoyo emocional y contención confidencial           |
      | Refugios      | Casa Amparo Lima Norte     | Refugio temporal con atención integral para mujeres en riesgo |
      | Legal         | Línea de orientación legal | Asesoría gratuita y confidencial en casos de violencia        |

  Scenario: Acceso restringido a la opción de agregar favoritos
    Given que el usuario navega de forma anónima
    When intenta presionar el botón “Agregar a favoritos”
    Then el sistema muestra un mensaje “Debes registrarte o iniciar sesión para guardar tus favoritos”
    And el botón queda deshabilitado hasta que el usuario se autentique
