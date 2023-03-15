import 'package:flutter/material.dart';
import '../../Model/view_model.dart';
import '../../main.dart';
import 'package:provider/provider.dart';

class ButtonsOne extends StatelessWidget {
  ButtonsOne({super.key});

  final buttontitle = ['Celcios', 'Kelvin', 'Fahrenheit'];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 3,
      mainAxisSpacing: 20,
      crossAxisCount: 1,
      children: List.generate(3, (index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
          margin: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Provider.of<AppView>(context, listen: false).buttonindex = index;
              Provider.of<AppView>(context, listen: false).next();
              FocusScope.of(context).unfocus();
              controller.nextPage(
                  duration: const Duration(microseconds: 300),
                  curve: Curves.ease);
            },
            child: Text(
              buttontitle[index],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        );
      }),
    );
  }
}
