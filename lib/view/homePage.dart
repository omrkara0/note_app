import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app/constants.dart';

import '../widgets/addButton.dart';
import '../widgets/buildNote.dart';
import '../widgets/topBar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Stream<QuerySnapshot> query = FirebaseFirestore.instance
      .collection("notes")
      .orderBy("datetime", descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackColor,
      floatingActionButton: AddButton(),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: SafeArea(
          child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [TopBar()],
            body: Column(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
                  child: StreamBuilder<QuerySnapshot>(
                    stream: query,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text("${snapshot.error}"),
                        );
                      }
                      if (snapshot.hasData) {
                        return StaggeredGridView.countBuilder(
                            physics: BouncingScrollPhysics(),
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              return buildNote(
                                  snapshot.data!.docs[index]["title"],
                                  snapshot.data!.docs[index]["content"],
                                  snapshot.data!.docs[index]["datetime"]
                                      .toDate(),
                                  context);
                            },
                            staggeredTileBuilder: (index) {
                              return StaggeredTile.count(
                                  1, index.isEven ? 1.8 : 1.3);
                            });
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
