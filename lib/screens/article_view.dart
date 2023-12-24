import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Article View',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      articleModel.image.toString(),
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/sports.jpg',
                          width: double.infinity,
                          // height: 200,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  articleModel.tittle.toString(),
                  // overflow: TextOverflow.ellipsis,

                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  articleModel.content.toString(),
                  // overflow: TextOverflow.ellipsis,
                  //  maxLines: 200,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
