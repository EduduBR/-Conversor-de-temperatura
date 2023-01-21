import 'package:flutter/material.dart';
import '../Acervo/Cores.dart';
import '../Acervo/Strings.dart';
import '../Acervo/Theme.dart';
import '../Main.dart';
import 'Mvvm.dart';

var selected = 0;

class ButtonScreenI extends StatelessWidget {
  const ButtonScreenI({super.key});

  @override
  Widget build(BuildContext context) {
    final string = Strings();
    final functions = AppView();
    return MaterialApp(
      theme: isMode ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
      home: GridView.count(
        childAspectRatio: 3,
        mainAxisSpacing: 20,
        crossAxisCount: 1,
        children: List.generate(3, (index) {
          return Container(
            padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
               selected = index;
                functions.next();
                FocusScope.of(context).unfocus();
              },
              child: Text(
                string.buttontitle[index],
                style: const TextStyle(
                    color: Cor.darkgreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        }),
      ),
    );
  }
}
