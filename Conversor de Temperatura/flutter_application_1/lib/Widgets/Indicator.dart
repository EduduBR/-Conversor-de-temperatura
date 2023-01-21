import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  Color cor1;
  Color cor2;
  Indicator(this.cor1, this.cor2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cor1),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cor2),
        )
      ],
    );
  }
}