import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../Model/model.dart';
import '../../../Utils/Globals/count_globals.dart';

class ButtonsTwo extends StatelessWidget {
  ButtonsTwo({super.key});

  final buttontext = ['Celcios', 'Kelvin', 'Fahrenheit'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 3,
      mainAxisSpacing: 20,
      crossAxisCount: 1,
      children: List.generate(
        3,
        (index) {
          return Container(
            padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: index != CountGlobals.selectType
                  ? () {
                      CountGlobals.processIndex = index;
                      Provider.of<Functions>(context, listen: false).process();
                    }
                  : null,
              child: Text(
                buttontext[index],
                style: GoogleFonts.vollkorn(fontSize: 25),
              ),
            ),
          );
        },
      ),
    );
  }
}
