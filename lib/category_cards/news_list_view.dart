import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/category_cards/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 10,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: NewsTile(),
        );
      },
    ));
  }
}
