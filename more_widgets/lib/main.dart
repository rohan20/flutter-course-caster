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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                "https://image.freepik.com/free-photo/natural-wooden-background_24837-206.jpg",
                height: 200,
              ),
              Image.asset(
                "flutterlogo.png",
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
