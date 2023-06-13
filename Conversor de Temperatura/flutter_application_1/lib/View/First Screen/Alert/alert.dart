import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Atenção',
        style: GoogleFonts.robotoSlab(fontSize: 23),
        textAlign: TextAlign.center,
      ),
      content: Text(
          "Não foi adicionado nenhum número. Por favor, adicione um valor.",
          style: GoogleFonts.robotoSlab(fontSize: 18)),
      actions: [
        TextButton(
          child: Text('Fechar',
              style: GoogleFonts.robotoSlab(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
