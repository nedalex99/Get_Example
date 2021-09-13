import 'dart:convert';

import 'package:get_example/model/news.dart';
import 'package:get_example/utils/generic_responses/default_response.dart';
import 'package:get_example/utils/generic_responses/error_response.dart';
import 'package:get_example/utils/network/news_request/responses/get_news_response.dart';
import 'package:http/http.dart' as http;

class NewsRequest {
  static Future<NewsRequest> get _instance async =>
      _newsInstance ??= NewsRequest();
  static NewsRequest? _newsInstance;

  static Future<NewsRequest> init() async {
    if (_newsInstance == null) _newsInstance = await _instance;
    return _newsInstance!;
  }

  Future<DefaultResponse> getNews() async {
    String country = "us";
    const api_key = '5ef7d79a42f14f68816733282f4d9663';

    final String _uri =
        "https://newsapi.org/v2/top-headlines?country=$country&category=health&apiKey=$api_key";
    try {
      final http.Response response = await http.get(
        Uri.parse(
          _uri,
        ),
      );

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        return GetNewsResponse(
          statusCode: 200,
          newsList: (json['articles'] as List)
              .map(
                (e) => News.fromJson(
                  e,
                ),
              )
              .toList(),
        );
      } else {
        return ErrorResponse(
          statusCode: response.statusCode,

          /// Your error
          error: "",

          /// Your message
          message: "",
        );
      }
    } catch (e) {
      return ErrorResponse(
        /// Your error
        error: "",

        /// Your message
        message: "",
      );
    }
  }
}
