import 'package:flutter_application_1/Acervo/Strings.dart';
import 'package:flutter_application_1/Widgets/Mvvm.dart';
import 'package:flutter/material.dart';
import '../Acervo/Cores.dart';
import '../Widgets/ButtonsScreenI.dart';
import '../Widgets/Indicator.dart';
import '../Widgets/Visor.dart';

var buttonK = true;
var buttonF = true;
var buttonC = true;

class ScreenII extends StatefulWidget {
  const ScreenII({super.key});

  @override
  State<ScreenII> createState() => _ScreenIIState();
}

class _ScreenIIState extends State<ScreenII> {
  @override
  Widget build(BuildContext context) {
    final string = Strings();
    final functions = AppView();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visor(),
          string.titletwo,
          Expanded(
            child: GridView.count(
              childAspectRatio: 3,
              mainAxisSpacing: 20,
              crossAxisCount: 1,
              children: List.generate(
                3,
                (index) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Cor.lightgreen,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 8,
                              color: index != selected ? Cor.green : Cor.beje),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: index != selected
                          ? () {
                              setState(() {
                                functions.converterSelected = index;
                                functions.process();
                              });
                            }
                          : null,
                      child: Text(
                        string.buttontitle[index],
                        style: TextStyle(
                            color: index != selected ? Cor.darkgreen : Cor.beje,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 350, 0),
            child: IconButton(
              onPressed: () => functions.back(),
              icon: const Icon(
                Icons.arrow_circle_left_outlined,
                size: 50,
                color: Cor.brown,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Indicator(Cor.beje, Cor.green),
    );
  }
}
