import 'package:flutter/material.dart';

void main() {
  runApp(MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Bookmarks"),
        ),
        body: Container(

        ),
      ),
    );
  }
}
