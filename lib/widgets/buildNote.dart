import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/view/detailPage.dart';

Widget buildNote(String id, String title, String content, DateTime dateTime,
    Color color, BuildContext context) {
  String formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);

  return InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => DetailPage(
                id: id,
                title: title,
                content: content,
                dateTime: formattedDate,
              )),
    ),
    child: Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 5,
                  child: Center(
                      child: Text(
                    title,
                    style: titleStyle,
                  ))),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    formattedDate,
                    style: datestyle,
                  ),
                ),
              )
            ],
          )),
    ),
  );
}
