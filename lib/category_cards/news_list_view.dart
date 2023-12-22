import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/category_cards/news_tile.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsListView extends StatelessWidget {
 
 final List<ArticleModel> articleModel;

  const NewsListView(news, {super.key, required this.articleModel});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articleModel.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: NewsTile(articleModel: articleModel[index],),
        );
      },
    ));
  }
}
