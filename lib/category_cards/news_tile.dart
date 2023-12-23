import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articleModel;

  const NewsTile({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: articleModel.image.toString().isEmpty
                    ? Image.network(articleModel.image.toString())
                    : Image.asset('assets/sports.jpg')

                /*
              Image.asset(
                'assets/sports.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              */
                ),
            SizedBox(
              height: 12,
            ),
            Text(
              articleModel.tittle.toString(),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              articleModel.subTittle.toString(),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
