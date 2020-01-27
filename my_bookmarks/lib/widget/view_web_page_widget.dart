import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidget extends StatefulWidget {
  String url;

  ViewWebPageWidget(this.url);

  @override
  _ViewWebPageWidgetState createState() => _ViewWebPageWidgetState();
}

class _ViewWebPageWidgetState extends State<ViewWebPageWidget> {
  var _isLoadingWebPage = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        WebView(
          onPageFinished: (url) {
            setState(() {
              _isLoadingWebPage = false;
            });
          },
          initialUrl: widget.url,
        ),
        _isLoadingWebPage ? CircularProgressIndicator() : Container(),
      ],
    );
  }
}
