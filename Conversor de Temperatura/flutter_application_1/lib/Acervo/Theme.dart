import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Acervo.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Cor.green,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Cor.darkgrey,
          backgroundColor: Cor.lightgreen,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 8, color: Cor.green),
              borderRadius: BorderRadius.circular(50)))),
             
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Cor.green,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Cor.darkgrey,
          backgroundColor: Cor.lightgreen,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 8, color: Cor.green),
              borderRadius: BorderRadius.circular(50)))),
);
