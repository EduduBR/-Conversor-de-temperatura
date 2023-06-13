// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        labelStyle: GoogleFonts.vollkorn(fontSize: 23),
        labelText: 'Temperatura',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.inverseSurface,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  const BorderSide(
            color: Color(0xffffa9712c),
            width: 3,
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
