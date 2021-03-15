import 'package:flutter/material.dart';
import 'package:hello_word/pages/tab_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vissoka Wallpaper',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: DefaultTabController(
        length: 4,
        child: TabsPage(),
      ),
    );
  }
}
