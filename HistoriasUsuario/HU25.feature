Feature: Políticas de Privacidad

  Como usuaria
  Quiero visualizar las políticas de privacidad de la web
  Para conocer cómo se usan y protegen mis datos personales

  Scenario Outline: Visualización de políticas desde diferentes ubicaciones
    Given que la usuaria se encuentra en la <ubicacion> del aplicativo
    And visualiza el enlace “Políticas de Privacidad”
    When selecciona dicho enlace
    Then el sistema muestra la página con el texto completo de las políticas de privacidad
    And la información puede leerse sin necesidad de iniciar sesión

    Examples:
      | ubicacion              | tipo_vista                     |
      | Pie de página          | Vista completa de las políticas |
      | Formulario de registro | Modal lateral sin salir del flujo de registro |

  Scenario: Acceso desde el pie de página
    Given que la usuaria se encuentra navegando en la web
    When hace clic en el enlace “Políticas de Privacidad” en el pie de página
    Then el sistema muestra la página con el texto completo de las políticas de privacidad
    And la información puede leerse sin necesidad de iniciar sesión

  Scenario: Acceso desde el formulario de registro
    Given que la usuaria se encuentra en el formulario de registro
    When selecciona el enlace “Políticas de Privacidad” junto a la casilla de aceptación
    Then la información completa se muestra sin salir del proceso de registro
    And puede leerse sin necesidad de iniciar sesión
