import 'package:flutter/material.dart';
import 'package:hello_word/models/tags.model.dart';

class TagsCard extends StatelessWidget {
  final TagsModel item;

  const TagsCard({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.amber,
    );
  }
}
