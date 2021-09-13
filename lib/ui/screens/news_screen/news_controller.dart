import 'package:get/get.dart';
import 'package:get_example/model/news.dart';
import 'package:get_example/utils/network/news_request/news_request.dart';
import 'package:get_example/utils/network/news_request/responses/get_news_response.dart';

class NewsController extends GetxController {
  final NewsRequest _newsRequest = Get.find();
  RxList<News> newsList = <News>[].obs;

  @override
  Future<void> onInit() async {
    await _newsRequest.getNews().then(
          (value) => {
            if ((value as GetNewsResponse).statusCode == 200)
              {
                newsList.value = value.newsList!,
              },
          },
        );
    super.onInit();
  }
}
