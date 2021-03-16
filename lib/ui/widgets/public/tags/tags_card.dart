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
          height: 200.0,
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(55),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(item.image)),
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      );
    }
  }
}
