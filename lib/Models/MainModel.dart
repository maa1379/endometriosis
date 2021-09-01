import 'package:flutter/material.dart';

class MainModel{

  int id;
  String text;
  String icon;
  Widget widget;

  MainModel({this.id, this.text, this.icon,this.widget});
}


class DataModel{

  int id;
  String title;
  String text;

  DataModel({this.id, this.title, this.text});
}