import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/ui/screens/news_screen/news_controller.dart';
import 'package:get_example/ui/widgets/news_card_widget/news_card.dart';
import 'package:get_example/ui/widgets/news_card_widget/news_card_controller.dart';

class NewsScreen extends StatelessWidget {
  final NewsController _newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemBuilder: ((BuildContext context, int index) {
            return NewsCard(
              newsCardController: Get.put(
                NewsCardController(),
                tag: _newsController.newsList[index].title!,
              ),
              text: _newsController.newsList[index].title!,
            );
          }),
          itemCount: _newsController.newsList.length,
        ),
      ),
    );
  }
}
