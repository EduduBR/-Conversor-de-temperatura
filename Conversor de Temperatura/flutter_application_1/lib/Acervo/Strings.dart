import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Strings {
  final buttontitle = ['Celcios', 'Kelvin', 'Fahrenheit'];

  final titleone = Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Text(
      'Temperatura está em:',
      style: GoogleFonts.coiny(fontSize: 30),
    ),
  );

  final titletwo = Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Text(
      'Converter para:',
      style: GoogleFonts.coiny(fontSize: 30),
    ),
  );
}
