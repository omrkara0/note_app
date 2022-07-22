import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/view/homePage.dart';

class DetailedTopBar extends StatelessWidget {
  String id;
  DetailedTopBar({
    required this.id,
    Key? key,
  }) : super(key: key);

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
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 47, 53, 65)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.penToSquare,
                        color: Colors.white70,
                        size: 20,
                      )),
                )),
            SizedBox(
              width: 10,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 47, 53, 65)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                      onPressed: () {
                        FirebaseFirestore.instance
                            .collection("notes")
                            .doc(id)
                            .delete();
                        Navigator.pop(context);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.trash,
                        color: Colors.white70,
                        size: 20,
                      )),
                )),
          ],
        ),
      ],
    );
  }
}
