import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Acervo/Acervo.dart';
import '../Acervo/Theme.dart';
import '../Matrix.dart';
import '../Telas/Screenone.dart';
import 'Funçoes.dart';

//Widget para a entrada de dados
class Box extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controlador;
  String label;

  Box(this.controlador, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Cor.green,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
            color:Cor.darkgreen, fontSize: 20),
        border: const OutlineInputBorder(),
        labelText: label,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Cor.green, width: 4.0),
            borderRadius: BorderRadius.circular(25.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Cor.green, width: 4.0),
            borderRadius: BorderRadius.circular(25.0)),
      ),
      controller: controlador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (controlador) {
        if (controlador == null || controlador.isEmpty) {
          return "Digite um Número";
        }
        return null;
      },
    );
  }
}

//Indicador de paginas basico
// ignore: must_be_immutable
class Indicator extends StatelessWidget {
  Color cor1;
  Color cor2;
  Indicator(this.cor1, this.cor2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cor1),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cor2),
        )
      ],
    );
  }
}

//Visor onde o resultado é apresentado
class Visor extends StatefulWidget {
  const Visor({super.key});

  @override
  State<Visor> createState() => _VisorState();
}

class _VisorState extends State<Visor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 300,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Cor.green, width: 8)),
      child: Text(
        visor.toStringAsFixed(2),
        textAlign: TextAlign.center,
        style: GoogleFonts.quando(fontSize: 60),
      ),
    );
  }
}

class ButtonsOne extends StatelessWidget {
  const ButtonsOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isMode ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
      home: GridView.count(
        childAspectRatio: 3,
        mainAxisSpacing: 20,
        crossAxisCount: 1,
        children: List.generate(3, (index) {
          return Container(
            padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                selected = index;
                converter();
                FocusScope.of(context).unfocus();
              },
              child: Text(
                titulos[index],
                style: const TextStyle(
                    color: Cor.darkgreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        }),
      ),
    );
  }
}
