import 'package:flutter/material.dart';
import 'package:note_app/widgets/addTopBar.dart';

import '../constants.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AddTopBar(),
            TextField(
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "gwegwegw",
                  hintText: "Title",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          ],
        ),
      )),
    );
  }
}
