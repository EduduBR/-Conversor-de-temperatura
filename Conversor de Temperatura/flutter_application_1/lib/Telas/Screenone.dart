import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Strings.dart';
import '../Acervo/Cores.dart';
import '../Widgets/Indicator.dart';
import '../Widgets/TextField.dart';
import '../Widgets/ButtonsScreenI.dart';

var entrada = TextEditingController();

class ScreenI extends StatefulWidget {
  const ScreenI({super.key});

  @override
  State<ScreenI> createState() => _ScreenIState();
}

class _ScreenIState extends State<ScreenI> {
  @override
  Widget build(BuildContext context) {
    final string = Strings();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(135, 30, 135, 0),
            child: Box(entrada, 'Temperatura'),
          ),
          string.titleone,
          const Expanded(
            child: ButtonScreenI(),
          )
        ],
      ),
      bottomNavigationBar: Indicator(Cor.green, Cor.beje),
    );
  }
}
