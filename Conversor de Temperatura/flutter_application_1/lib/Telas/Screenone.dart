import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Acervo.dart';
import 'package:flutter_application_1/Acervo/Theme.dart';
import 'package:flutter_application_1/Utencilhos/Fun%C3%A7oes.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Matrix.dart';
import '../Utencilhos/Widgets.dart';

var entrada = TextEditingController();
var retorno = 0;
var selected = 0;

var buttonK = true;
var buttonF = true;
var buttonC = true;



class Bodyone extends StatefulWidget {
  const Bodyone({super.key});

  @override
  State<Bodyone> createState() => _BodyoneState();
}

class _BodyoneState extends State<Bodyone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(30),
                width: 150,
                child: Box(entrada, 'Temperatura')),
             Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Temperatura está em:',
                style: GoogleFonts.coiny(fontSize: 30),
              ),
            ),
            const Expanded(
              child: ButtonsOne(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Indicator(Cor.green, Cor.grey),
    );
  }
}

