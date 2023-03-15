import 'package:flutter_application_1/Widgets/Buttons/button_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Card/card_screen_two.dart';
import 'package:flutter_application_1/Model/view_model.dart';
import '../Acervo/Colors/color_palette.dart';
import '../Widgets/visor.dart';
import 'package:provider/provider.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Visor(),
          ),
          const CardTwo(),
          Expanded(child: ButtonsTwo()),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          IconButton(
            onPressed: () =>
                Provider.of<AppView>(context, listen: false).back(),
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 50,
              color: ColorPalette.darkgreen,
            ),
          ),
        ],
      ),
    );
  }
}
