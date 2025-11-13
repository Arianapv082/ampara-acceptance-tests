Feature: Registro de psicólogo verificado

  Como psicólogo
  Quiero registrarme y validar mi colegiatura
  Para atender casos formalmente 

  Scenario Outline: Registro y aprobación exitosa
    Given que el psicólogo completa el formulario con datos válidos
    And valida su correo y número de celular
    When envía su solicitud de registro con la siguiente información:
      | Correo electrónico | Contraseña | DNI       | Celular    | Distrito        | N° de colegiatura |
      | <correo>           | <clave>    | <dni>     | <celular>  | <distrito>      | <colegiatura>    |
    Then el sistema procesa la verificación de los datos ingresados
    And muestra una confirmación de verificación exitosa
    And redirige al onboarding para configurar alias, horarios y canales de atención

    Examples:
      | Correo                 | Clave      | Dni       | Celular    | Distrito          | Colegiatura |
      | daniel.ruiz@ampara.pe  | DanR@1234  | 71456238  | 987654321  | San Borja         | PSCP-4582   |
      | fernanda.vega@ampara.pe| FVega@25   | 74512389  | 956874123  | Miraflores        | PSCP-9123   |
      | julio.ramos@ampara.pe  | JRam0s#24  | 78456901  | 965478321  | Los Olivos        | PSCP-7011   |

  Scenario: Corrección y reenvío de datos o documentos
    Given que durante la validación se detecta una colegiatura inválida o una habilitación vencida
    When el psicólogo corrige los campos y vuelve a subir el documento actualizado
    Then el sistema acepta el nuevo envío
    And muestra un mensaje de confirmación de recepción
    And una vez validado, habilita el acceso al proceso de onboarding
