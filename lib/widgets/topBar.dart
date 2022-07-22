import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        "Notlarım",
        style: GoogleFonts.bellotaText(
            fontSize: 35,
            color: Color(0xFFEEEEEE),
            fontWeight: FontWeight.bold),
      ),
      actions: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 47, 53, 65)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Color(0xFFEEEEEE),
                  size: 20,
                ),
              ),
            )),
      ],
    );
  }
}
