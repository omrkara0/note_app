import 'package:flutter/material.dart';
import 'package:note_app/view/addPage.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddPage()),
        );
      },
      child: Icon(Icons.add_sharp, size: 30),
    );
  }
}
