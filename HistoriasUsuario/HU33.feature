Feature: Landing Page informativa

  Como visitante
  Quiero acceder a una página principal (Landing Page) que me explique claramente qué es Ampara y cómo puede ayudarme
  Para entender su propósito y decidir si deseo registrarme o conocer más

  Scenario: Visualización inicial de la Landing Page
    Given que el visitante ingresa a la dirección principal del sitio web de Ampara
    When se carga la Landing Page
    Then el sistema muestra el logotipo de Ampara
    And presenta el mensaje principal con el nombre y propósito del proyecto
    And se visualizan los botones “Servicios”, “Testimonios”, “Ir a la plataforma” y “Testimonios frecuentes”
    And el diseño se adapta correctamente al dispositivo utilizado (web o móvil)

  Scenario: Acceso al registro desde la Landing Page
    Given que el visitante desea unirse a la plataforma
    When hace clic en el botón “Ir a la plataforma”
    Then el sistema redirige al formulario de registro rápido y confidencial
    And mantiene el estilo visual coherente con la Landing Page
