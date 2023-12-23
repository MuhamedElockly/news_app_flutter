import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_ui_setup/category_cards/news_list_view.dart';

class CategoryView extends StatelessWidget {
  final String category;

  const CategoryView({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            NewsListView(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
