import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/widget/bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  List<Bookmark> bookmarksList;

  BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getBookmarkWidgetsList(),
    );
  }

  List<BookmarkListItemWidget> getBookmarkWidgetsList() {
    List<BookmarkListItemWidget> list = [];

    for (Bookmark bookmark in bookmarksList) {
      list.add(BookmarkListItemWidget(bookmark));
    }

    return list;
  }
}
