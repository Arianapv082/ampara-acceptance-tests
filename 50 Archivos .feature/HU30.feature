Feature: Agenda de citas

  Como psicóloga
  Quiero visualizar mi agenda semanal de sesiones
  Para organizar mis horarios y atender a las usuarias sin confusiones

  Scenario Outline: Creación exitosa de una cita en la agenda
    Given que la psicóloga accede al módulo “Agenda de citas” desde su panel profesional
    And visualiza el formulario con campos de fecha, hora y alias de la usuaria
    When completa los datos y selecciona “Guardar”
    Then el sistema registra la cita correctamente
    And la muestra en el calendario con estado “Pendiente”
    And la cita no incluye datos personales reales, solo el alias o código del caso

    Examples:
      | fecha        | hora  | alias         |
      | 12/11/2025   | 10:00 | Caso-001-A    |
      | 13/11/2025   | 14:30 | Usuaria-102B  |

  Scenario: Reprogramación de cita existente
    Given que la psicóloga necesita modificar una cita en su agenda
    When selecciona la opción “Editar” y cambia la fecha o la hora
    Then el sistema actualiza la cita en el calendario
    And muestra el mensaje “Cita actualizada correctamente”
    And mantiene el alias o código de la usuaria sin cambios

  Scenario: Finalización de cita realizada
    Given que la psicóloga ya completó una sesión programada
    When marca la cita como “Realizada” desde el panel de control
    Then el sistema actualiza el estado de la cita
    And la mueve automáticamente al historial de sesiones completadas
    And el calendario muestra una alerta visual indicando la cita finalizada
