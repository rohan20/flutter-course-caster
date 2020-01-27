import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View bookmark")),
      body: WebView(initialUrl: "https://google.com"),
    );
  }
}
