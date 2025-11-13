 Feature: Editar perfil

  Como usuaria
  Quiero acceder a “Mi cuenta” y editar mis datos
  Para mantener mi perfil actualizado y reflejar cambios personales

  Scenario Outline: Edición exitosa de información personal
    Given que la usuaria se encuentra en la vista “Mi cuenta” desde el encabezado
    And ha modificado uno o más campos de su perfil, como <campo_editado>
    When presiona el botón “Guardar cambios”
    Then el sistema guarda la información actualizada
    And muestra el mensaje “Cambios guardados correctamente”
    And el botón “Guardar cambios” vuelve a deshabilitarse hasta un nuevo cambio válido

    Examples:
      | campo_editado     |
      | nombre completo   |
      | alias             |
      | teléfono          |
      | contraseña        |

  Scenario: Campo vacío al intentar guardar
    Given que la usuaria borra el contenido del campo obligatorio “Nombre completo” o “Alias”
    When intenta presionar el botón “Guardar cambios”
    Then el sistema impide el guardado, marca el campo e indican que no puede quedar vacío
    And muestra un mensaje de validación indicando que el campo no puede estar vacío
    And el botón “Guardar cambios” permanece deshabilitado
