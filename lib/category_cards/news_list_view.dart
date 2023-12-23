import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/category_cards/news_tile.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';

class NewsListView extends StatefulWidget {
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articleModel = [];

  bool isLoading = true;

  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        articleModel = snapshot.data ?? [];

        if (snapshot.hasData) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articleModel.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: NewsTile(
                    articleModel: articleModel[index],
                  ),
                );
              },
            ),
          );
        } else if (snapshot.hasData) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                snapshot.error.toString(),
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );

    // SliverList(
    //     delegate: SliverChildBuilderDelegate(
    //   childCount: articleModel.length,
    //   (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 24),
    //       child: NewsTile(
    //         articleModel: articleModel[index],
    //       ),
    //     );
    //   },
    // ));
  }
}
