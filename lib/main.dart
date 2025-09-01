import 'package:flutter/material.dart';
import 'form_validator.dart';

void main() {
  runApp(FormAppConTDD());
}

class FormAppConTDD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario con TDD',
      home: Scaffold(
        appBar: AppBar(title: Text('Formulario con TDD')),
        body: Formulario(),
      ),
    );
  }
}

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _nombreController = TextEditingController();
  final _correoController = TextEditingController();
  final _validator = FormValidator();

  String _mensaje = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: _nombreController,
            decoration: InputDecoration(labelText: "Nombre"),
          ),
          TextField(
            controller: _correoController,
            decoration: InputDecoration(labelText: "Correo"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _mensaje = _validator.validar(
                  _nombreController.text,
                  _correoController.text,
                );
              });
            },
            child: Text("Enviar"),
          ),
          SizedBox(height: 20),
          Text(_mensaje),
        ],
      ),
    );
  }
}
