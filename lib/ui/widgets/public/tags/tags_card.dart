import 'package:flutter/material.dart';
import 'package:hello_word/models/tags.model.dart';

class TagsCard extends StatelessWidget {
  final TagsModel item;

  const TagsCard({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (item.image.contains("http")) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(item.image)),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: Colors.redAccent,
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: () {
          print('Click Wallpaper Pic');
        },
        child: Container(
          width: 60.0,
          height: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(item.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      );
    }
  }
}
