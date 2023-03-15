import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Acervo/theme.dart';
import 'package:flutter_application_1/View/screen_one.dart';
import 'package:flutter_application_1/View/screen_two.dart';
import 'package:flutter_application_1/Model/view_model.dart';
import 'package:provider/provider.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
     Provider.debugCheckInvalidValueType = null;
  runApp(const App());
  });
}

final controller = PageController();
bool isMode = false;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AppView(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isMode ? darkTheme : lightTheme,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('Conversor'),
            toolbarHeight: 50,
            elevation: 5,
          ),
          drawer: Drawer(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(15)),
                  child: AppBar(automaticallyImplyLeading: false),
                ),
                Card(
                  elevation: 10,
                  child: ListTile(
                    title: Text(isMode ? 'Modo Claro' : 'Modo Escuro'),
                    leading: Checkbox(
                      value: isMode,
                      onChanged: (value) {
                        setState(() {
                          isMode ? isMode = false : isMode = true;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: PageView(
              controller: controller,
              children: const [ScreenOne(), ScreenTwo()]),
        ),
      ),
    );
  }
}
