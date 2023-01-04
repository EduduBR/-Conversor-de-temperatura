import 'package:flutter/material.dart';
import '../Acervo/Acervo.dart';
import '../Matrix.dart';
import '../Telas/Screenone.dart';



//Avança para proxima tela
void next() {
  controller.nextPage(
      duration: const Duration(microseconds: 300), curve: Curves.ease);
}

//Volta a pagina inicial
void back() {
  controller.previousPage(
      duration: const Duration(microseconds: 300), curve: Curves.ease);
  buttonK = true;
  buttonF = true;
  buttonC = true;
  visor = 0;
  converterSelected = 0;
}


//Sistema de conversor que indentifica quais 
//opções ficaram indisponiveis
void converter() {
  switch (selected) {
    case 0:
      retorno = int.parse(entrada.text);
      buttonC = false;
      next();
      break;
    case 1:
      retorno = int.parse(entrada.text);
      buttonK = false;
      next();
      break;
    case 2:
      retorno = int.parse(entrada.text);
      buttonF = false;
      next();
      break;
  }
}

//Sistema de conversor que indentifica quais 
//opções estão disponiveis e converte atualizando o visor
void process() {
  if (converterSelected == 0) {
    if (buttonK == false) {
      visor = (retorno - 273.15);
    } else {
      visor = (retorno - 32) / 1.8;
    }
  } else if (converterSelected == 1) {
    if (buttonC == false) {
      visor = (retorno + 273.15);
    } else {
      visor = ((retorno - 32) * 5) / 9 + 273;
    }
  } else if (converterSelected == 2) {
    if (buttonC == false) {
      visor = (retorno * 1.8 + 32);
    } else {
      visor = (retorno - 273) * 1.8 + 32;
    }
  }
}






