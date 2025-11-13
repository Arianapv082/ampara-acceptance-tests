Feature: Eliminación de cuenta de usuaria

  Como usuaria  
  Quiero eliminar mi cuenta  
  Para dejar de usar la plataforma y remover mi información personal del sistema  

  Scenario Outline: Confirmación de eliminación de cuenta
    Given que la usuaria se encuentra en la vista “Mi cuenta”
    When presiona el botón rojo “Eliminar cuenta”
    Then el sistema muestra un modal de confirmación con el siguiente mensaje:
      | Mensaje principal           | Esta acción es irreversible  |
      | Opción 1                    | Cancelar                     |
      | Opción 2                    | Confirmar eliminación        |

  Scenario: Eliminación confirmada
    Given que la usuaria ha abierto el modal de eliminación
    When selecciona “Confirmar eliminación”
    Then el sistema elimina la cuenta y todos los datos personales asociados
    And cierra la sesión actual
    And limpia los datos temporales del dispositivo
    And redirige a la pantalla principal pública
    And muestra el mensaje “Tu cuenta ha sido eliminada correctamente”
    And futuros intentos de inicio de sesión muestran “Cuenta no encontrada o credenciales inválidas”

  Scenario: Cancelación del proceso
    Given que la usuaria ha abierto el modal de eliminación
    When selecciona “Cancelar” o cierra el modal
    Then el sistema no elimina la cuenta
    And la usuaria permanece en la vista “Mi cuenta”
