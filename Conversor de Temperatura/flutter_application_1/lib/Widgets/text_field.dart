import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final TextEditingController controlador;
  final String label;

  const MyTextField(this.controlador, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller: controlador,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Temperatura',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      validator: (value) {
        if (value == null) {
          return 'O campo deve conter pelo menos um dígito.';
        }
        return null;
      },
    );
  }
}
