import 'package:flutter/material.dart';

import '../Acervo/Cores.dart';

class Box extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controlador;
  String label;

  Box(this.controlador, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Cor.brown,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Cor.darkgreen, fontSize: 20),
        border: const OutlineInputBorder(),
        labelText: label,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Cor.green, width: 4.0),
            borderRadius: BorderRadius.circular(25.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Cor.green, width: 4.0),
            borderRadius: BorderRadius.circular(25.0)),
      ),
      controller: controlador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (controlador) {
        if (controlador == null || controlador.isEmpty) {
          return "Digite um Número";
        }
        return null;
      },
    );
  }
}
