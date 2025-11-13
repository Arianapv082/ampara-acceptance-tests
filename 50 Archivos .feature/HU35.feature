Feature: Eliminación de cuenta del psicólogo

  Como psicólogo registrado en la plataforma
  Quiero tener la opción de eliminar mi cuenta
  Para poder dar de baja mi perfil de manera definitiva

  Scenario Outline: Confirmación de eliminación de cuenta
    Given que el psicólogo desea eliminar su cuenta
    When hace clic en el botón “Eliminar cuenta” dentro de su perfil
    And aparece un cuadro de confirmación con las opciones “Cancelar” y “Confirmar eliminación”
    Then el sistema muestra el mensaje de advertencia “¿Estás seguro que deseas eliminar tu cuenta?”
    And el psicólogo puede decidir si desea continuar o cancelar la acción

    Examples:
      | opción seleccionada   | resultado esperado                                               |
      | Cancelar              | El cuadro se cierra sin realizar cambios                         |
      | Confirmar eliminación | Se procede con la eliminación de la cuenta                       |

  Scenario: Eliminación exitosa de cuenta
    Given que el psicólogo confirma la eliminación de su cuenta
    When selecciona “Confirmar eliminación”
    Then el sistema elimina el perfil de manera permanente
    And muestra el mensaje “Cuenta eliminada correctamente”
    And cierra la sesión automáticamente, redirigiendo a la pantalla principal pública
