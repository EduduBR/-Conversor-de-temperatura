import 'package:flutter/material.dart';
import '../../main.dart';

class AppView extends ChangeNotifier {
  final entry = TextEditingController();

  double visor = 0;

  var buttonK = true;
  var buttonF = true;
  var buttonC = true;

  var buttonindex = 0;
  var retorno = 0;
  var converterindex = 0;

  void back() {
    controller.previousPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
    buttonK = true;
    buttonF = true;
    buttonC = true;
    visor = 0;
    converterindex = 0;
  }

  void next() {
    switch (buttonindex) {
      case 0:
        retorno = int.parse(entry.text);
        buttonC = false;
        break;
      case 1:
        retorno = int.parse(entry.text);
        buttonK = false;
        break;
      case 2:
        retorno = int.parse(entry.text);
        buttonF = false;
        break;
    }
  }

  void process() {
    switch (converterindex) {
      case 0:
        if (buttonK == false) {
          visor = (retorno - 273.15);
        } else {
          visor = (retorno - 32) / 1.8;
        }
        break;
      case 1:
        if (buttonC == false) {
          visor = (retorno + 273.15);
        } else {
          visor = ((retorno - 32) * 5) / 9 + 273;
        }
        break;
      case 2:
        if (buttonC == false) {
          visor = (retorno * 1.8 + 32);
        } else {
          visor = (retorno - 273) * 1.8 + 32;
        }
        break;
    }
    notifyListeners();
  }
}
