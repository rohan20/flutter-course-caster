import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/util/navigation_util.dart';

class BookmarkGridItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkGridItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () => navigateToViewBookmarkPage(bookmark, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(bookmark.title, style: Theme.of(context).textTheme.title),
              SizedBox(height: 6),
              Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
              SizedBox(height: 6),
              Hero(tag: bookmark.link, child: Icon(Icons.star))
            ],
          ),
        ),
      ),
    );
  }
}
