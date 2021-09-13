import 'package:flutter/material.dart';
import 'package:get_example/ui/screens/news_screen/news_screen.dart';
import 'package:get/get.dart';
import 'package:get_example/utils/services/news_service.dart';

Future<void> main() async {
  await Get.putAsync(() => NewsService().init());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsScreen(),
    );
  }
}
