Feature: Recordatorio de sesiones terapéuticas

  Como psicólogo
  Quiero que el sistema envíe recordatorios automáticos a las usuarias (por correo o notificación web)
  Para reducir ausencias y mejorar la continuidad del acompañamiento

  Scenario Outline: Recordatorio automático por correo electrónico
    Given que la usuaria tiene una sesión programada con su psicólogo
    When faltan 24 horas para el inicio de la cita y el sistema prepara el recordatorio con la siguiente información:
      | Medio de notificación | Tiempo previo | Contenido visible                   |
      | <medio>               | <tiempo>      | <contenido>                         |
    Then el sistema envía automáticamente un correo con información básica del recordatorio
    And garantiza que el mensaje no incluya detalles sensibles ni el motivo de la consulta

    Examples:
      | medio              | tiempo     | contenido                                                            |
      | Correo electrónico | 24 horas   | “Tienes una sesión programada próximamente con tu profesional de Ampara.” |

  Scenario Outline: Notificación web desde dispositivo móvil
    Given que la usuaria ha permitido las notificaciones del navegador en su celular
    When faltan 30 minutos para su sesión terapéutica y el sistema genera el aviso:
      | Medio de notificación | Tiempo previo | Contenido visible                              |
      | <medio>               | <tiempo>      | <contenido>                                    |
    Then el sistema muestra una notificación discreta con el mensaje de recordatorio

    Examples: 
      | medio             | tiempo   | contenido                                                                   |
      | Notificación web  | 30 min   | “Tu sesión terapéutica comenzará pronto. Ingresa a la app para conectarte.” |

  Scenario: Desactivación de recordatorios por parte de la usuaria
    Given que la usuaria desea dejar de recibir recordatorios automáticos
    When desactiva la opción desde su perfil en la sección “Notificaciones”
    Then el sistema guarda la preferencia
    And deja de enviar recordatorios futuros hasta que la usuaria vuelva a activarlos
