import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Buttons/buttons.dart';
import '../Visor/visor.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Conversor',
          style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 50,
        elevation: 5,
        centerTitle: true,
        leading: IconButton(
          onPressed: () =>
              Provider.of<Functions>(context, listen: false).back(context),
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Visor(),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: SizedBox(
              height: 50,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Converter para:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoSlab(fontSize: 28),
                ),
              ),
            ),
          ),
          Expanded(child: ButtonsTwo()),
        ],
      ),
    );
  }
}
