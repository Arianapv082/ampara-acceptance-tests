Feature: Registrar contactos de emergencia

  Como usuaria de Ampara
  Quiero registrar contactos de emergencia
  Para que reciban alertas en caso de peligro

  Scenario Outline: Registro de contactos de emergencia
    Given que la usuaria ingresa a la sección "Contactos de emergencia"
    When añade los siguientes contactos de confianza y guarda la información:
      | Nombre del contacto | Número de teléfono | Relación        |
      | <nombre>            | <telefono>         | <relacion>      |
    And confirma la acción presionando "Guardar"
    Then la app confirma el registro exitoso
    And los contactos quedan disponibles para alertas automáticas

    Examples:
      | Nombre         | Telefono   | Relacion    |
      | Mamá           | 987654321  | Madre       |
      | Hermana Carla  | 912345678  | Hermana     |
      | Mejor amiga    | 999111222  | Amiga       |

  Scenario: Edición o eliminación de contactos
    Given que la usuaria desea actualizar su lista de contactos
    When elimina o modifica un contacto 
    Then el sistema actualiza la información
    And muestra confirmación sin errores

  Scenario: Envío de alerta a contactos
    Given que la usuaria ha registrado contactos previamente
    When presiona el botón de emergencia
    Then los contactos reciben un mensaje con ubicación GPS
    And una solicitud de ayuda
