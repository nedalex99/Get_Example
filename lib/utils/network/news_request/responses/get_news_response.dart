import 'package:get_example/model/news.dart';
import 'package:get_example/utils/generic_responses/default_response.dart';

class GetNewsResponse implements DefaultResponse {
  @override
  String? status;

  @override
  int? statusCode;

  final List<News>? newsList;

  GetNewsResponse({
    this.status,
    this.statusCode,
    this.newsList,
  });
}
