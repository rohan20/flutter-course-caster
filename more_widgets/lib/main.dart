import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Home Page"),
        ),
        body: Container(
          color: Colors.lightBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.green,
                child: Text("Columns"),
              ),
              Container(
                color: Colors.orange,
                child: Text("and"),
              ),
              Container(
                color: Colors.red,
                child: Text("Rows"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
