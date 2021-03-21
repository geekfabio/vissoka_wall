import 'package:flutter/material.dart';
import 'package:hello_word/models/color.model.dart';

import 'color_card.dart';

class ColorList extends StatelessWidget {
  final List<ColorModel> colors;

  const ColorList({Key key, this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            ColorModel item = colors[index];
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: ColorCard(
                item: item,
              ),
            );
          }),
    );
  }
}
