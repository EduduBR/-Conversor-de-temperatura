import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/Globals/boolean_globals.dart';
import 'package:flutter_application_1/main.dart';
import '../Utils/Globals/count_globals.dart';
import '../View/Second Screen/Screen/screen.dart';

class Functions extends ChangeNotifier {

  void next(context, index) {
    CountGlobals.selectType = index;
    FocusScope.of(context).unfocus();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ScreenTwo()));
    CountGlobals.converted = double.parse(CountGlobals.entry.text);
    switch (CountGlobals.selectType) {
      case 0:
        BooleanGlobals.buttonC = false;
        break;
      case 1:
        BooleanGlobals.buttonK = false;
        break;
      case 2:
        BooleanGlobals.buttonF = false;
        break;
    }
  }

   void back(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const App()),
    );

    BooleanGlobals.buttonK = true;
    BooleanGlobals.buttonF = true;
    BooleanGlobals.buttonC = true;
    CountGlobals.display = 0;
    CountGlobals.processIndex = 0;
  }

  void process() {
    switch (CountGlobals.selectType) {
      case 0:
        CountGlobals.processIndex == 1
            ? CountGlobals.display = CountGlobals.converted + 273.15
            : CountGlobals.display = (CountGlobals.converted * 9 / 5) + 32;
        break;
      case 1:
        CountGlobals.processIndex == 0
            ? CountGlobals.display = CountGlobals.converted - 273.15
            : CountGlobals.display =
                (CountGlobals.converted - 273.15) * 9 / 5 + 32;
        break;
      case 2:
        CountGlobals.processIndex == 0
            ? CountGlobals.display = (CountGlobals.converted - 32) * 5 / 9
            : CountGlobals.display = (CountGlobals.converted + 459.67) * 5 / 9;
        break;
    }
    notifyListeners();
  }
}
