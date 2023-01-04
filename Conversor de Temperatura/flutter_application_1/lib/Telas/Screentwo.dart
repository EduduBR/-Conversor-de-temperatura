// ignore_for_file: prefer_const_constructors
import 'package:flutter_application_1/Matrix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Acervo.dart';
import '../Utencilhos/Funçoes.dart';
import 'Screenone.dart';
import '../Utencilhos/Widgets.dart';

class Button2 extends StatefulWidget {
  const Button2({super.key});

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Visor(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Converter para:',
              style: GoogleFonts.coiny(fontSize: 30),
            ),
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: 3,
              mainAxisSpacing: 20,
              crossAxisCount: 1,
              children: List.generate(3, (index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Cor.lightgreen,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 8,
                                color: index != selected
                                        ? Cor.green
                                        : Cor.grey
                                    ),
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: index != selected
                        ? () {
                            setState(() {
                              converterSelected = index;
                              process();
                            });
                          }
                        : null,
                    child: Text(
                      titulos[index],
                      style: TextStyle(
                          color: index != selected ? Cor.darkgreen : Cor.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: IconButton(
                  onPressed: () => back(),
                  icon: const Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 50,
                    color: Cor.green,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
      bottomNavigationBar: Indicator(Cor.grey, Cor.green),
    );
  }
}
