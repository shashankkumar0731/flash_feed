// https://newsapi.org/v2/top-headlines?sources=google-news-in=&apiKey=8a7fd0d9924f4a71b7a45f829cceeccd
import 'dart:math';

import 'package:flash_feed/newsArt.dart';
import 'package:http/http.dart';
import 'dart:convert';

class FetchNews{

   static List sourcesId = [
      "abc-news",


      "bbc-news",
      "bbc-sport",

      "business-insider",

      "engadget",
      "entertainment-weekly",
      "espn",
      "espn-cric-info",
      "financial-post",

      "google-news",
      "google-news-in",

      "medical-news-today",

      "national-geographic",

      "news24",
      "new-scientist",

      "new-york-magazine",
      "next-big-future",

      "techcrunch",
      "techradar",

      "the-hindu",

      "the-wall-street-journal",



    ];
     static Future<NewsArt> fetchNews() async {
      final _random = new Random();
      var sourceID = sourcesId [_random.nextInt(sourcesId.length)];
      print(sourceID);
     print("**************************************************************");



    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourcesId&apiKey=8a7fd0d9924f4a71b7a45f829cceeccd"));

   Map body_data = jsonDecode(response.body);
   List articles = body_data['articles'];
   //print(articles);

   final _Newrandom = new Random();
   var myArticle = articles[_random.nextInt(articles.length)];
   print(myArticle);
      print("**************************************************************");

      return NewsArt.fromAPItoApp(myArticle);
  }
}

