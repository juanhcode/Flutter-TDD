import 'package:flutter_application_without_tdd/form_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Validación de formulario", () {
    test("Formulario válido", () {
      final validator = FormValidator();
      final result = validator.validar("Juan", "juan@correo.com");
      expect(result, "Formulario válido");
    });
  });
}
