import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';

class BookmarkListItemWidget extends StatelessWidget {
  Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(bookmark.title, style: Theme.of(context).textTheme.title),
          SizedBox(height: 6),
          Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
        ],
      ),
    );
  }
}
