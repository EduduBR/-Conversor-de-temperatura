import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Utils/Globals/count_globals.dart';
import '../Buttons/buttons.dart';
import '../TextField/textfield.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(135, 15, 135, 15),
            child:
                MyTextField(CountGlobals.entry, 'Temperatura'),
          ),
           Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: SizedBox(
              height: 80,
              width: 380,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Sua temperatura está em:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoSlab(fontSize:28,color: Theme.of(context).colorScheme.inverseSurface),
                ),
              ),
            ),
          ),
          Expanded(
            child: ButtonsOne(),
          )
        ],
      ),
    );
  }
}
