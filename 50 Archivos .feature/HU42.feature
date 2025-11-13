Feature: Visualizar y gestionar información personal, favoritos y citas desde “Mi cuenta”

  Como usuario registrado normal de la aplicación AMPARA
  Quiero acceder a la sección “Mi cuenta”
  Para visualizar y administrar mi información personal, mis citas y mis contenidos favoritos (noticias y directorios), además de gestionar mis notificaciones

  Scenario Outline: Visualización correcta de la información y secciones
    Given que el usuario inicia sesión en la plataforma AMPARA
    When accede a la sección “Mi cuenta” desde el menú superior y visualiza los siguientes datos:
      | Sección               | Descripción breve                                                        |
      | <seccion>             | <descripcion>                                                            |
    Then el sistema muestra su información personal, sus favoritos, sus citas agendadas y el estado de notificaciones
    And el usuario puede navegar correctamente entre las subsecciones sin errores

    Examples:
      | seccion              | descripcion                                                                                 |
      | Información personal | Nombre, correo, contraseña oculta y botón “Editar información”                              |
      | Favoritos            | Lista de noticias y directorios marcados como favoritos, con opción para ver el detalle     |
      | Citas                | Citas agendadas con nombre del profesional, especialidad, fecha y descripción               |
      | Notificaciones       | Interruptor para activar o desactivar notificaciones por correo electrónico                 |

  Scenario: Error al editar información personal
    Given que el usuario accede a “Mi cuenta”
    When intenta editar su información personal pero deja campos obligatorios vacíos (por ejemplo, correo electrónico)
    Then el sistema muestra un mensaje de validación indicando que los campos requeridos deben completarse
    And no permite guardar los cambios hasta que los errores sean corregidos
