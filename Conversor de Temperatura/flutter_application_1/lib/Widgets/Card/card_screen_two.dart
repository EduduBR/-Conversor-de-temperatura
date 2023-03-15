import 'package:flutter/material.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: const SizedBox(
        height: 50,
        width: 300,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'Converter para:',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
