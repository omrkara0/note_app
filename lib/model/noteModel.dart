import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NoteModel {
  String? title;
  String? content;
  DateTime? datetime;

  NoteModel({this.title, this.content, this.datetime});

  NoteModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    datetime = json['datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['content'] = this.content;
    data['datetime'] = (this.datetime as Timestamp).toDate();
    return data;
  }
}
