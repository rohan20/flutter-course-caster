import 'package:flutter/material.dart';

class AddBookmarkPage extends StatefulWidget {

  @override
  _AddBookmarkPageState createState() => _AddBookmarkPageState();
}

class _AddBookmarkPageState extends State<AddBookmarkPage> {
  final _titleTextController = TextEditingController();

  final _linkTextController = TextEditingController();

  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add a new bookmark")),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
            child: Icon(Icons.check),
            backgroundColor: Colors.green,
            onPressed: () {
              String title = _titleTextController.text;
              String link = _linkTextController.text;

              Scaffold.of(context).hideCurrentSnackBar();
              if (isInputValid(title, link)) {
                print("Title: ${_titleTextController.text}");
                print("Link: ${_linkTextController.text}");
              } else {
                showInputError(context, title, link);
              }
            },
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _titleTextController,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (textInput) {
                FocusScope.of(context).requestFocus(_linkFocusNode);
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.title),
                  labelText: "Title",
                  hintText: "Title of the bookmark",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _linkTextController,
              focusNode: _linkFocusNode,
              decoration: InputDecoration(
                  icon: Icon(Icons.link),
                  labelText: "URL",
                  hintText: "Webpage link",
                  border: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _linkTextController.dispose();
    _linkFocusNode.dispose();
    super.dispose();
  }

  bool isInputValid(String title, String link) {
    return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String link) {
    if (title.isEmpty) {
      showSnackBar(context, "Title is empty");
    } else if (link.isEmpty) {
      showSnackBar(context, "Link is empty");
    }
  }

  void showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}
