import 'package:flutter/material.dart';

void main() {
  runApp($NAME$());
}

class $NAME$ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("$APP_BAR_TITLE$"),
        ),
        body: Container($END$),
      ),
    );
  }
}
