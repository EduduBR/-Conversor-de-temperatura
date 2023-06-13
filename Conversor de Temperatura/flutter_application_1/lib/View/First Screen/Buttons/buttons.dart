import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/First%20Screen/Alert/alert.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Model/model.dart';
import 'package:provider/provider.dart';
import '../../../Utils/Globals/count_globals.dart';

class ButtonsOne extends StatelessWidget {
  ButtonsOne({super.key});

  final buttontitle = ['Celcios', 'Kelvin', 'Fahrenheit'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 3,
      mainAxisSpacing: 20,
      crossAxisCount: 1,
      children: List.generate(3, (index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              CountGlobals.entry.text != ''
                  ? Provider.of<Functions>(context, listen: false)
                      .next(context, index)
                  : showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const Alert();
                      });
            },
            child: Text(
              buttontitle[index],
              style: GoogleFonts.vollkorn(fontSize: 25),
            ),
          ),
        );
      }),
    );
  }
}
