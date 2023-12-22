import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryCard({super.key, required this.categoryModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                categoryModel.image,
              ),
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          categoryModel.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
