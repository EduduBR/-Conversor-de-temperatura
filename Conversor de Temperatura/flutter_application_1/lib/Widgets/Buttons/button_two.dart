import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/view_model.dart';

class ButtonsTwo extends StatelessWidget {
  ButtonsTwo({super.key});

  final buttontext = ['Celcios', 'Kelvin', 'Fahrenheit'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
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
              onPressed: index != Provider.of<AppView>(context).buttonindex
                  ? () {
                      Provider.of<AppView>(context, listen: false).process();
                      Provider.of<AppView>(context, listen: false)
                          .converterindex = index;
                    }
                  : null,
              child: Text(
                buttontext[index],
                style: TextStyle(
                    // color: index != Provider.of<AppView>(context).buttonindex
                      
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
