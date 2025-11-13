Feature: Iniciar sesión

  Como usuario registrado
  Quiero iniciar sesión con mi correo y contraseña
  Para acceder de forma segura a mi cuenta y utilizar las funciones de la aplicación

  Scenario Outline: Acceso correcto con credenciales válidas
    Given que la usuaria ha ingresado sus credenciales correctamente en la pantalla de login
    And activa la opción “Mantener sesión activa” si lo desea
    When presiona el botón “Iniciar sesión”:
      | Correo electrónico   | Contraseña  |
      | <correo>             | <password>  |
    Then el sistema autentica al usuario con éxito
    And muestra la pantalla principal de la aplicación
    And la sesión queda iniciada de manera segura

    Examples:
      | correo                | password   |
      | ana.torres@mail.com   | Ana@1234   |
      | luciaf@gmail.com      | LuFe_22    |
      | carlaj@outlook.com    | Cj2025!    |

  Scenario: Credenciales incorrectas
    Given que la usuaria ingresa un correo o contraseña inválidos
    When intenta iniciar sesión
    Then el sistema muestra el mensaje “Correo o contraseña incorrectos”
    And permanece en la pantalla de login sin iniciar sesión
