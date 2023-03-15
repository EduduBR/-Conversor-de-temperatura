import 'package:flutter/material.dart';


class CardOne extends StatelessWidget {
  const CardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: const SizedBox(
              height: 80,
              width: 380,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Sua temperatura está em:',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          );
  }
}