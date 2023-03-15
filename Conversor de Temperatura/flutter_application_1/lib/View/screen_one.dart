import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Card/card_screen_one.dart';
import 'package:flutter_application_1/Model/view_model.dart';
import '../Widgets/text_field.dart';
import '../Widgets/Buttons/button_one.dart';
import 'package:provider/provider.dart';

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
                MyTextField(Provider.of<AppView>(context).entry, 'Temperatura'),
          ),
          const CardOne(),
          Expanded(
            child: ButtonsOne(),
          )
        ],
      ),
    );
  }
}
