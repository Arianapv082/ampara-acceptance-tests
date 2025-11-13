Feature: Consultar recursos y talleres virtuales

  Como usuaria
  Quiero acceder a recursos educativos, guías y talleres virtuales
  Para obtener más información sobre la violencia doméstica

  Scenario Outline: Visualización de recursos según categoría
    Given que la usuaria accede a la sección "Recursos y talleres" en la plataforma Ampara
    And utiliza su dispositivo con conexión estable
    When selecciona la categoría de recursos:
      | Categoría          |
      | <categoria>        |
    Then la interfaz muestra todo el contenido disponible según la categoría elegida
    And los recursos se adaptan automáticamente al tamaño de pantalla

    Examples:
      | Dispositivo | Categoria           | Tipo de contenido mostrado                     |
      | Móvil       | Guías educativas    | Artículos, infografías y videos cortos         |
      | Tablet      | Talleres virtuales  | Enlaces a sesiones en vivo y material de apoyo |
      | Computadora | Derechos legales    | PDFs descargables y enlaces a instituciones    |

  Scenario: Visualización de recursos desde el móvil
    Given que la usuaria accede a la plataforma Ampara desde su teléfono
    And se encuentra en la sección "Recursos"
    When selecciona una categoría de recursos
    Then la interfaz muestra todos los contenidos asociados a esa categoría
    And ajusta el diseño de manera responsive para su pantalla

  Scenario: Descarga de documentos desde una computadora
    Given que la usuaria ha iniciado sesión desde una computadora
    When selecciona una guía y presiona el botón “Descargar PDF”
    Then el archivo se descarga correctamente en el dispositivo
    And la aplicación muestra el mensaje “Descarga completada”
