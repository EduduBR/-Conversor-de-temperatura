import 'package:flutter/material.dart';
import 'Cores.dart';


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
