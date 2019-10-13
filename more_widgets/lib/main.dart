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
        body: Center(
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(24),
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 300),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              border: Border.all(width: 4, color: Colors.blue),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              color: Colors.yellow,
              child: Text(
                "This is a text widget. This widget is inside a Container widget.",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
