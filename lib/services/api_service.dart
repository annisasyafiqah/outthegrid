import 'dart:convert';

import 'package:NewsApp/model/article_model.dart';
import 'package:http/http.dart';

class ApiService {
  final endPointUrl =
      "http://newsapi.org/v2/top-headlines?country=id&apiKey=df2f84b9cadc43229ecd6adc94d63e10";

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
