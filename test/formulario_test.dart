import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Validación de formulario", () {
    test("Formulario válido", () {
      final validator = FormValidator(); // <-- aún no existe
      final result = validator.validar("Juan", "juan@correo.com");
      expect(result, "Formulario válido");
    });
  });
}
