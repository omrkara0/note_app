import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/constants.dart';

import '../view/homePage.dart';

class AddTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 47, 53, 65)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: IconButton(
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (Route<dynamic> route) => false),
                  icon: FaIcon(
                    FontAwesomeIcons.angleLeft,
                    color: Colors.white70,
                    size: 20,
                  )),
            )),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 47, 53, 65)),
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Save",
                  style: savestyle,
                ))),
      ],
    );
  }
}
