import 'package:flutter/material.dart';
import 'package:hello_word/models/color.model.dart';

class ColorCard extends StatelessWidget {
  final ColorModel item;

  const ColorCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ));
  }
}
