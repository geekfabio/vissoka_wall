import 'package:flutter/material.dart';
import 'package:hello_word/models/recommended.model.dart';

class RecommendedCard extends StatelessWidget {
  final RecommendedModel item;

  const RecommendedCard({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 10,
        height: 10,
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
        child: Row(
          children: [
            Container(
                height: 20,
                width: 20,
                child: Image.asset(
                  item.img,
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            TextButton(
              child: Text(
                item.title,
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {},
            ),
          ],
        ));
  }
}
