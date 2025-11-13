Feature: Enlace al Libro de Reclamaciones

  Como usuaria
  Quiero acceder fácilmente al enlace del Libro de Reclamaciones desde la página web
  Para poder registrar un reclamo o queja sobre el servicio cuando lo necesite

  Scenario: Acceso desde el pie de página
    Given que la usuaria se encuentra navegando por la página web
    When hace clic en el enlace “Libro de Reclamaciones” ubicado en el pie de página (footer)
    Then el sistema redirige correctamente al formulario digital del Libro de Reclamaciones
    And el acceso no solicita datos personales sensibles

  Scenario: Envío exitoso de reclamo
    Given que la usuaria completó los campos del formulario (tipo de reclamo, descripción y correo opcional)
    When presiona el botón “Enviar reclamo”
    Then el sistema registra el reclamo correctamente
    And muestra el mensaje “Tu reclamo ha sido recibido correctamente”
    And garantiza la confidencialidad de la información enviada
