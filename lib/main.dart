import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/screens/home.dart';
import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/services/news_service.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(NewsCloud());
}

class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
