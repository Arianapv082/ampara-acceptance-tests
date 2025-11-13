Feature: Registro de cuenta usuaria víctima

  Como usuaria de Ampara
  Quiero registrarme con mis datos básicos
  Para  acceder a Ampara y personalizar mi experiencia de forma segura

  Scenario Outline: Registro exitoso de nueva cuenta
    Given que la usuaria completó correctamente los campos obligatorios
    And aceptó los términos y condiciones
    When presiona el botón "Crear cuenta"
    Then el sistema crea su cuenta
    And envía un correo de verificación
    And muestra el mensaje “Revisa tu correo para activar tu cuenta”

    Examples:
      | Nombre completo   | DNI       | Correo electrónico    | Contraseña | Distrito          |
      | Ana Torres        | 45872136  | ana.torres@mail.com   | Ana@1234   | San Borja         |
      | Lucía Fernández   | 78451290  | luciaf@gmail.com      | LuFe_22    | Villa María       |
      | Carla Jiménez     | 65789012  | carlaj@outlook.com    | Cj2025!    | Surco             |

  Scenario: Error de validación en el registro
    Given que la usuaria ingresó un correo ya registrado o un dato inválido
    When intenta crear la cuenta
    Then la aplicación impide el registro
    And muestra el mensaje de error bajo el campo correspondiente