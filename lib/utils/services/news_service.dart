import 'package:get/get.dart';
import '../network/news_request/news_request.dart';

class NewsService extends GetxService {
  Future<NewsRequest> init() async {
    return NewsRequest.init();
  }
}
