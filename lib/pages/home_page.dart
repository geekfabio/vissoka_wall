import 'package:flutter/material.dart';
import 'package:hello_word/utils/mockups/category.mockup.dart';
import 'package:hello_word/widgets/public/category_List.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MockupData bloc = new MockupData();
    //MODEL
    bloc.getData();
    print(bloc.categories.first.tag);
    print(bloc.categories.first.title);
    //WIDGET
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Home",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            CategoryList(categories: bloc.categories),
          ],
        ),
      ),
    );
  }
}
