import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Acervo/Colors/color_palette.dart';
import '../Model/view_model.dart';


class Visor extends StatelessWidget {
  const Visor({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Provider.of<AppView>(context),
      builder: (context,child) {
        return Container(
          margin: const EdgeInsets.only(top: 30),
          width: 300,
          height: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: ColorPalette.darkgreen, width: 5)),
          child: Text(
           Provider.of<AppView>(context).visor.toStringAsFixed(2),
            textAlign: TextAlign.center,
            style: GoogleFonts.quando(fontSize: 60),
          ),
        );
      }
    );
  }
}
