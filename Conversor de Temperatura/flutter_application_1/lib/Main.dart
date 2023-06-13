import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Utils/Globals/boolean_globals.dart';
import 'package:flutter_application_1/View/First%20Screen/AppBar/appbar.dart';
import 'package:flutter_application_1/View/First%20Screen/Screen/screen.dart';
import 'package:flutter_application_1/Model/model.dart';
import 'package:provider/provider.dart';

import 'Utils/Colors/Theme/theme.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const App());
  });
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void callback() {
    setState(() {
      BooleanGlobals.themeDark = !BooleanGlobals.themeDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Functions(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: BooleanGlobals.themeDark ? darkTheme : lightTheme,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: MyAppBar(
            callback: callback,
          ),
          body: const ScreenOne(),
        ),
      ),
    );
  }
}
