import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Acervo.dart';
import 'package:flutter_application_1/Acervo/Theme.dart';
import 'package:flutter_application_1/Telas/Screenone.dart';
import 'package:flutter_application_1/Telas/Screentwo.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyConverter());

final controller = PageController();
bool isMode = true;

class MyConverter extends StatefulWidget {
  const MyConverter({super.key});

  @override
  State<MyConverter> createState() => _MyConverterState();
}

class _MyConverterState extends State<MyConverter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isMode ? darkTheme : lightTheme,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Conversor', style: GoogleFonts.coiny(fontSize: 30)),
          centerTitle: true,
          toolbarHeight: 60.2,
          leading: IconButton(
            icon: Icon(
              isMode ? Icons.rocket : Icons.rocket_launch,
              size: 35,
            ),
            onPressed: () {
              setState(() {
                isMode ? isMode = false : isMode = true;
              });
            },
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 30.00,
          backgroundColor: Cor.green,
        ),
        body: PageView(
            controller: controller, children: const [Bodyone(), Button2()]),
      ),
    );
  }
}
