import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:news_demo/constants/strings.dart';
import 'package:news_demo/models/newsinfo.dart';

class API_Manager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var url = Uri.parse(Strings.news_url);

    var newsModel = null;

    try {
      var response = await client.get(url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);

        var newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}
