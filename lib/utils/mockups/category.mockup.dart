import 'package:hello_word/models/category.model.dart';

class MockupData {
  List<CategoryModel> categories = [];
  CategoryModel model = new CategoryModel(id: "1", title: "Cat", tag: "animal");

  getData() {
    model = new CategoryModel(id: "2", title: "Cars", tag: "Motor");
    categories.add(model);
    print(categories.length);
    model = new CategoryModel(id: "3", title: "Animes", tag: "Ilustration");
    categories.add(model);
    model = new CategoryModel(id: "3", title: "Moto", tag: "Ilustration");
    categories.add(model);
    model = new CategoryModel(id: "3", title: "News", tag: "Ilustration");
    categories.add(model);

    print(categories.length);
    return categories;
  }
}
