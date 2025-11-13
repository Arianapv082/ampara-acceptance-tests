Feature: Completar perfil profesional

  Como psicólogo
  Quiero editar mi perfil
  Para que las usuarias puedan conocer mi enfoque y elegirme desde la plataforma

  Scenario Outline: Actualización exitosa del perfil 
    Given que el psicólogo ha ingresado a “Mi cuenta” desde el panel profesional
    And visualiza la vista de perfil con los campos editables en la columna derecha
    When actualiza su información (por ejemplo, <descripcion>) 
    And selecciona al menos una especialidad y una modalidad de consulta
    And presiona el botón “Guardar cambios”
    Then el sistema guarda los datos actualizados
    And actualiza la tarjeta izquierda con la nueva información profesional
    And muestra el mensaje “Perfil actualizado” sin salir de la vista de perfil

    Examples:
      | descripcion                                       | especialidades          | modalidades            |
      | “Atención en crisis y manejo de ansiedad.”        | Ansiedad, Depresión     | Chat, Videollamada     |
      | “Apoyo psicológico breve y terapia cognitiva.”    | Estrés, Autoestima      | Llamada, Videollamada  |
      | “Enfoque centrado en el bienestar emocional.”     | Ansiedad                | Chat                   |

  Scenario: Requisitos mínimos no cumplidos
    Given que el psicólogo dejó el campo “Nombre/alias” vacío
    Or no seleccionó ninguna especialidad o modalidad de consulta
    When intenta presionar el botón “Guardar cambios”
    Then el sistema impide el guardado
    And resalta los campos con errores o requisitos faltantes
    And muestra mensajes de validación indicando los elementos obligatorios
    And mantiene los datos en edición para su corrección
