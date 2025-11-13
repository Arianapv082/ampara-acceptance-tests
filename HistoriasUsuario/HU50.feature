Feature: Historial de sesiones psicológicas

  Como psicólogo profesional  
  Quiero acceder al historial seguro de sesiones y observaciones desde la plataforma web  
  Para dar seguimiento al caso y registrar la evolución de cada usuaria  

  Scenario Outline: Registro de nueva sesión
    Given que el psicólogo finaliza una sesión con una usuaria asignada
    When completa el formulario con la siguiente información:
      | Fecha de sesión  | Alias de usuaria | Observaciones breves          | Recomendaciones    |
      | <fecha>          | <alias>          | <observaciones>               | <recomendaciones>  |
    And presiona el botón “Guardar registro”
    Then el sistema guarda la información cifrada en la base de datos
    And muestra el mensaje “Sesión registrada correctamente”

    Examples:
      | fecha       | alias     | observaciones                          | recomendaciones                    |
      | 11/11/2025  | Caso-045  | Se observa mejora en manejo emocional  | Continuar con ejercicios diarios   |
      | 04/11/2025  | Caso-012  | Persiste ansiedad ante conflictos      | Practicar respiración guiada       |

  Scenario Outline: Consulta del historial de sesiones
    Given que el psicólogo inicia sesión en la plataforma web
    When abre el perfil de una usuaria asignada
    Then visualiza una lista con los registros anteriores en el siguiente formato:
      | Fecha | Alias | Estado emocional | Nota breve             |
      | <fecha> | <alias> | <estado> | <nota> |
    And puede hacer clic en cada registro para ver las observaciones completas

    Examples:
      | fecha       | alias     | estado emocional | nota                         |
      | 04/11/2025  | Caso-012  | Estable          | Mejor comunicación familiar  |
      | 28/10/2025  | Caso-045  | Ansiosa          | Se abordó control de estrés  |
