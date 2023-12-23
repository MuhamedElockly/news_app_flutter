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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getNews();
  }

  Future<void> getNews() async {
    articleModel = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService(Dio()).getNews(),
      builder: (context, snapshot) {
        articleModel = snapshot.data ?? [];
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount:articleModel.length,
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
