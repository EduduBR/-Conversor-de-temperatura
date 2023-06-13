import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback callback;
  const MyAppBar({Key? key, required this.callback}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool isMode = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Conversor',
        style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold),
      ),
      toolbarHeight: 60,
      elevation: 5,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.lightbulb_outlined,
          size: 35,
          color: Theme.of(context).colorScheme.surfaceTint,
        ),
        onPressed: widget.callback, 
      ),
    );
  }
}