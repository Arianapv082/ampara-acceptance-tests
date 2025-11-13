Feature: Términos y Condiciones

  Como usuaria
  Quiero visualizar los términos y condiciones de la web
  Para conocer mis derechos, obligaciones y el uso de mis datos antes de usar el servicio

  Scenario Outline: Ver Términos y Condiciones desde el footer
    Given que la usuaria se encuentra navegando en cualquier página del sitio Ampara
    And observa el enlace "Términos y Condiciones" en el footer o menú móvil
    When selecciona dicho enlace desde su dispositivo:
      | Dispositivo   | Navegador   |
      | <dispositivo> | <navegador> |
    Then se abre la página dedicada con el título “Términos y Condiciones”
    And se muestra la fecha de última actualización en la parte superior
    And la página incluye enlaces a “Política de Privacidad” y “Política de Cookies”

    Examples:
      | dispositivo | navegador |
      | Móvil       | Chrome    |
      | Computadora | Edge      |
      | Tablet      | Safari    |

  Scenario: Descargar PDF de los Términos
    Given que la usuaria se encuentra en la página “Términos y Condiciones”
    When presiona el botón “Descargar PDF”
    Then el archivo se descarga correctamente en su dispositivo
    And la aplicación muestra el mensaje “Descarga completada exitosamente”
