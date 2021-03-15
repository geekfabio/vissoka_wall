import 'package:flutter/material.dart' show Color;

class ColorModel {
  int id;
  String title;
  //TODO change Colors.name TO Colors.fromArgb("")
  Color color;

  ColorModel({this.id, this.title, this.color});

  ColorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}
