import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/widget/view_web_page_widget.dart';

class ViewBookmarkPage extends StatelessWidget {
  Bookmark bookmark;

  ViewBookmarkPage(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bookmark.title)),
      body: ViewWebPageWidget(bookmark.link),
    );
  }
}
