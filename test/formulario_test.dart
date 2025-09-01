import 'package:flutter_application_without_tdd/Form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Validación de formulario", () {
    test("Formulario válido", () {
      final validator = FormValidator();
      final result = validator.validar("Juan", "juan@correo.com");
      expect(result, "Formulario válido");
    });

    test("Correo vacío", () {
      final validator = FormValidator();
      final result = validator.validar("Juan", "");
      expect(result, "Errores en el formulario");
    });

    test("Correo inválido", () {
      final validator = FormValidator();
      final result = validator.validar("Juan", "juancorreo.com");
      expect(result, "Errores en el formulario");
    });
  });
}
