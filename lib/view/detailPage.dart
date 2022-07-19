import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/topBar.dart';

import '../widgets/detailTopBar.dart';

class DetailPage extends StatelessWidget {
  String title;
  String content;
  String dateTime;
  DetailPage(
      {Key? key,
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
              DetailedTopBar(),
              Expanded(
                child: ListView(
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
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ut porta neque. Pellentesque ac gravida ex. Fusce vitae imperdiet odio. Quisque ornare lacinia consequat. Integer vel arcu neque. Nulla ac leo nisl. Quisque quis diam eget tortor elementum consequat at et lacus. Curabitur tortor risus, feugiat non mattis tincidunt, elementum sit amet tellus. Aenean hendrerit turpis mi, a gravida risus congue nec. Duis iaculis fermentum libero, a porta est tincidunt eget. Ut ultrices consequat odio quis iaculis. Quisque ut leo molestie, maximus erat vitae, varius dui. Curabitur quis sollicitudin ma")
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
