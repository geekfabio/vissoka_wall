import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_word/models/category.model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel item;

  CategoryCard({@required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 45,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(200, 200, 200, 200),
            blurRadius: 5.2, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              1.0, // Move to right 10  horizontally
              6.3, // Move to bottom 5 Vertically
            ),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextButton(
        child: Text(
          item.title,
          style: TextStyle(color: Colors.black54),
        ),
        onPressed: () {},
      ),
    );
  }
}
