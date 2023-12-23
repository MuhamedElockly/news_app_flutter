import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=53c7623bd0464081be8cf14422061b24');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesModel = [];
      for (var article in articles) {
        articlesModel.add(ArticleModel(
            image: article['urlToImage'],
            tittle: article['title'],
            subTittle: article['description']));
      }
      print(articlesModel[2].tittle);
      return articlesModel;
    } catch (e) {
      return [];
    }
  }
}
