import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/page/add_bookmark_page.dart';
import 'package:my_bookmarks/util/navigation_util.dart';
import 'package:my_bookmarks/widget/bookmarks_list_widget.dart';

class BookmarksPage extends StatelessWidget {
  List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "https://google.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bookmarks"),
      ),
      body: BookmarksListWidget(bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () => navigateToAddBookmarkPage(context),
        label: Text("Add"),
      ),
    );
  }
}
