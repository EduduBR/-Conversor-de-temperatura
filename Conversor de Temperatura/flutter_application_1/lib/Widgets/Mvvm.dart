import 'package:flutter/material.dart';

import '../Main.dart';
import '../Telas/Screenone.dart';
import '../Telas/Screentwo.dart';
import 'ButtonsScreenI.dart';
import 'Visor.dart';

class AppView {
  var retorno = 0;
  var converterSelected = 0;


  void back() {
    controller.previousPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
    buttonK = true;
    buttonF = true;
    buttonC = true;
    visor = 0;
    converterSelected = 0;
  }

  void next() {
    switch (selected) {
      case 0:
        retorno = int.parse(entrada.text);
        buttonC = false;
        controller.nextPage(
            duration: const Duration(microseconds: 300), curve: Curves.ease);
        break;
      case 1:
        retorno = int.parse(entrada.text);
        buttonK = false;
        controller.nextPage(
            duration: const Duration(microseconds: 300), curve: Curves.ease);
        break;
      case 2:
        retorno = int.parse(entrada.text);
        buttonF = false;
        controller.nextPage(
            duration: const Duration(microseconds: 300), curve: Curves.ease);
        break;
    }
  }

  void process() {
    switch (converterSelected) {
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
  }
}
