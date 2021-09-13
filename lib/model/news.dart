class News {
  String? title;

  News({
    this.title,
  });

  factory News.fromJson(Map<dynamic, dynamic> parsedJson) {
    return News(
      title: parsedJson['title'],
    );
  }
}
