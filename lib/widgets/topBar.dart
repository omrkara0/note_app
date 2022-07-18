import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      floating: true,
      title: Text(
        "Notes",
        style: GoogleFonts.bellotaText(
            fontSize: 35,
            color: Color(0xFFEEEEEE),
            fontWeight: FontWeight.bold),
      ),
      actions: [
        Icon(
          Icons.search,
          color: Color(0xFFEEEEEE),
          size: 30,
        ),
      ],
    );
  }
}
