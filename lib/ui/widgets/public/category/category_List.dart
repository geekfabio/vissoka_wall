import 'package:flutter/material.dart';
import 'package:hello_word/models/category.model.dart';
import '../load_progress.dart';
import 'category_card.widget.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoryList({Key key, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: LoaderProgress(
        object: categories,
        callback: list,
      ),
    );
  }

  Widget list() {
    print("/////////////");
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        CategoryModel item = categories[index];
        return Padding(
          padding: EdgeInsets.all(5),
          child: CategoryCard(
            item: item,
          ),
        );
      },
    );
  }
}
