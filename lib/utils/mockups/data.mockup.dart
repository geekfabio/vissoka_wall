import 'package:flutter/material.dart';
import 'package:hello_word/models/category.model.dart';
import 'package:hello_word/models/color.model.dart';
import 'package:hello_word/models/recommended.model.dart';
import 'package:hello_word/models/tags.model.dart';

class MockupData {
  MockupData() {
    getData();
    getColors();
    getTags();
    getRecommend();
  }

  List<TagsModel> tags = [];
  List<CategoryModel> categories = [];
  List<ColorModel> colors = [];
  List<RecommendedModel> recommended = [];
  getData() {
    CategoryModel model =
        new CategoryModel(id: "1", title: "Cat", tag: "animal");
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
    ColorModel colorItem =
        new ColorModel(id: 1, title: "Blue", color: Colors.blue);
    colorItem =
        new ColorModel(id: 2, title: "yellow", color: Color(0xFFFFE57F));
    colors.add(colorItem);
    colorItem = new ColorModel(id: 3, title: "green", color: Color(0xFFAED581));
    colors.add(colorItem);
    colorItem = new ColorModel(id: 4, title: "Blue", color: Color(0xFF4FC3F7));
    colors.add(colorItem);
    colorItem =
        new ColorModel(id: 5, title: "orange", color: Color(0xFFFFCC80));
    colors.add(colorItem);
    colorItem = new ColorModel(id: 6, title: "pink", color: Color(0xFFF48FB1));
    colors.add(colorItem);

    colorItem = new ColorModel(id: 7, title: "black", color: Color(0xFF263238));
    colors.add(colorItem);

    return colors;
    //TODO change Colors.name TO Colors.fromArgb("") Na Model tem que receber uma string e converter em Color
  }

  getTags() {
    TagsModel item = new TagsModel(
        id: 1, title: "Anime", image: "assets/img/1.jpg", quantity: "+300");
    tags.add(item);
    item = new TagsModel(
        id: 2, title: "Otakus", image: "assets/img/2.jpg", quantity: "+760");
    tags.add(item);
    item = new TagsModel(
        id: 3,
        title: "Developers",
        image: "assets/img/3.jpg",
        quantity: "+200");
    tags.add(item);
    item = new TagsModel(
        id: 4, title: "Hackers", image: "assets/img/4.jpg", quantity: "+379");
    tags.add(item);
    item = new TagsModel(
        id: 5, title: "Sexy", image: "assets/img/7.jpg", quantity: "+678");
    tags.add(item);
    item = new TagsModel(
        id: 6, title: "Sexy", image: "assets/img/6.jpg", quantity: "+678");
    tags.add(item);
    return tags;
  }

  getRecommend() {
    RecommendedModel item = new RecommendedModel(
        title: "Anime", img: "assets/img/1.jpg", total: 300);
    recommended.add(item);
    item = new RecommendedModel(
        title: "Anime", img: "assets/img/2.jpg", total: 10);
    recommended.add(item);
    item = new RecommendedModel(
        title: "Anime", img: "assets/img/3.jpg", total: 20);
    recommended.add(item);
    item = new RecommendedModel(
        title: "Anime", img: "assets/img/4.jpg", total: 950);
    recommended.add(item);
    item = new RecommendedModel(
        title: "Anime", img: "assets/img/6.jpg", total: 100);
    recommended.add(item);
  }
}
