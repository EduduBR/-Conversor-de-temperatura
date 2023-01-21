import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Acervo/Cores.dart';

double visor = 0;

class Visor extends StatelessWidget {
  const Visor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 300,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Cor.brown, width: 8)),
      child: Text(
        visor.toStringAsFixed(2),
        textAlign: TextAlign.center,
        style: GoogleFonts.quando(fontSize: 60),
      ),
    );
  }
}
