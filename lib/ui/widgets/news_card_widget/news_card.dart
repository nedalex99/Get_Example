import 'package:flutter/material.dart';
import 'package:get_example/ui/widgets/news_card_widget/news_card_controller.dart';

class NewsCard extends StatelessWidget {
  final NewsCardController newsCardController;
  final String text;

  NewsCard({
    required this.newsCardController,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        12.0,
      ),
      child: GestureDetector(
        onTap: () => newsCardController.onTap(
          context: context,
          message: text,
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
