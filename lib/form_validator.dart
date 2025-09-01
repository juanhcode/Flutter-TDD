class FormValidator {
  String validar(String nombre, String correo) {
    if (nombre.isEmpty) {
      return "Errores en el formulario";
    }
    if (correo.isEmpty || !correo.contains("@")) {
      return "Errores en el formulario";
    }
    return "Formulario válido";
  }
}
