import 'package:flutter/material.dart';
import 'package:hello_word/models/category.model.dart';
import 'package:hello_word/models/color.model.dart';

class MockupData {
  MockupData() {
    getData();
    getColors();
  }
  List<CategoryModel> categories = [];
  List<ColorModel> colors = [];
  CategoryModel model = new CategoryModel(id: "1", title: "Cat", tag: "animal");
  ColorModel colorItem =
      new ColorModel(id: 1, title: "Blue", color: Colors.blue);

  getData() {
    categories.add(model);
    model = new CategoryModel(id: "2", title: "Cars", tag: "Motor");
    categories.add(model);
    model = new CategoryModel(id: "3", title: "Animes", tag: "Ilustration");
    categories.add(model);
    model = new CategoryModel(id: "3", title: "Moto", tag: "Motor");
    categories.add(model);
    model = new CategoryModel(id: "3", title: "News", tag: "Word");
    categories.add(model);

    return categories;
  }

  getColors() {
    colorItem =
        new ColorModel(id: 1, title: "yellow", color: Color(0xFFFFE57F));
    colors.add(colorItem);
    colorItem = new ColorModel(id: 1, title: "green", color: Color(0xFFAED581));
    colors.add(colorItem);
    colorItem = new ColorModel(id: 1, title: "Blue", color: Color(0xFF4FC3F7));
    colors.add(colorItem);
    colorItem =
        new ColorModel(id: 1, title: "orange", color: Color(0xFFFFCC80));
    colors.add(colorItem);
    colorItem = new ColorModel(id: 1, title: "pink", color: Color(0xFFF48FB1));
    colors.add(colorItem);

    colorItem = new ColorModel(id: 1, title: "black", color: Color(0xFF263238));
    colors.add(colorItem);

    return categories;
    //TODO change Colors.name TO Colors.fromArgb("") Na Model tem que receber uma string e converter em Color
  }
}
