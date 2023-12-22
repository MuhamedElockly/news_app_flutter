import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/category_cards/category_card.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

// ignore: must_be_immutable
class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  List<CategoryModel> models = const [
    CategoryModel(image: 'assets/business.jpg', name: 'Business'),
    CategoryModel(image: 'assets/entertainment.jpg', name: 'Entertainment'),
    CategoryModel(image: 'assets/health.jpg', name: 'Health'),
    CategoryModel(image: 'assets/sports.jpg', name: 'Sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(), 
        itemCount: models.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: models[index]);
        },
      ),
    );
  }
}
