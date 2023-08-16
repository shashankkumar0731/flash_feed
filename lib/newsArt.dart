class NewsArt{

  String imgUrl;
  String newsHead;
  String newsDes;
  String newscnt;
   String newsurl;
  NewsArt({
   required this.imgUrl,
   required this.newsDes,
   required this.newsurl,
   required this.newsHead,
    required this.newscnt
});





  static NewsArt fromAPItoApp(Map<String, dynamic>article ){
    return NewsArt(
        imgUrl: article["urlToImage"] ?? "https://media.istockphoto.com/id/1182477852/photo/breaking-news-world-news-with-map-backgorund.jpg?s=612x612&w=is&k=20&c=gPQhrMWAbWNczxcTWMRdukfXs96C4syXOcMZbJ-486E=",
        newsDes: article["description"] ?? "--",
        newsurl: article["content"] ?? "--",
        newsHead: article["title"] ?? "--",
        newscnt: article[""] ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");

  }


}