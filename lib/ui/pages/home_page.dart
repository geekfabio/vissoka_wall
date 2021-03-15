import 'package:flutter/material.dart';
import 'package:hello_word/ui/widgets/public/category/category_List.dart';
import 'package:hello_word/ui/widgets/public/colors/color_list.dart';
import 'package:hello_word/ui/widgets/public/tags/tags_list.dart';
import 'package:hello_word/utils/mockups/data.mockup.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MockupData bloc = new MockupData();
    //WIDGET
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Viss Wallpaper",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            CategoryList(categories: bloc.categories),
            SizedBox(height: 5),
            ColorList(colors: bloc.colors),
            TagsList(tags: bloc.tags)
          ],
        ),
      ),
    );
  }
}
