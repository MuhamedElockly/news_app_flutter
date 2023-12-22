import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  void getNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=53c7623bd0464081be8cf14422061b24&category=sports');

    Map<String, dynamic> jsonData = response.data;
   List<dynamic> articles = jsonData['articles'];
    print(articles[2]);
    
  }
}
