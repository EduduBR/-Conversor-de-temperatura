import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../Model/model.dart';
import '../../../Utils/Globals/count_globals.dart';

class Visor extends StatelessWidget {
  const Visor({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Provider.of<Functions>(context),
        builder: (context, child) {
          return Container(
            margin: const EdgeInsets.only(top: 30),
            width: 300,
            height: 85,
            child: Text(
              CountGlobals.display.toStringAsFixed(2),
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(fontSize: 55),
            ),
          );
        });
  }
}
