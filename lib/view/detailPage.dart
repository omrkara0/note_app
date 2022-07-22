import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/topBar.dart';

import '../widgets/detailTopBar.dart';

class DetailPage extends StatelessWidget {
  String id;
  String title;
  String content;
  String dateTime;
  DetailPage(
      {Key? key,
      required this.id,
      required this.title,
      required this.content,
      required this.dateTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              DetailedTopBar(
                id: id,
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  children: [
                    Text(
                      title,
                      style: titleStyle_small,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(dateTime, style: titleStyle2),
                    ),
                    Text(
                      content,
                      style: contentStyle,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
