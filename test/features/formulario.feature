Característica: Validación del formulario de datos personales
  Como usuario
  Quiero ingresar mi nombre y correo
  Para poder enviar el formulario de manera válida

  Escenario: Formulario válido
    Dado que ingreso el nombre "Juan"
    Y que ingreso el correo "juan@correo.com"
    Cuando envío el formulario
    Entonces debo ver el mensaje "Formulario válido"

  Escenario: Formulario inválido por correo vacío
    Dado que ingreso el nombre "Juan"
    Y que no ingreso el correo
    Cuando envío el formulario
    Entonces debo ver el mensaje "Errores en el formulario"

  Escenario: Formulario inválido por correo sin arroba
    Dado que ingreso el nombre "Juan"
    Y que ingreso el correo "juancorreo.com"
    Cuando envío el formulario
    Entonces debo ver el mensaje "Errores en el formulario"
