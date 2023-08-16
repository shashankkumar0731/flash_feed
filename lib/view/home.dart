import 'package:flash_feed/controller/fetchnews.dart';
import 'package:flash_feed/newsArt.dart';
import 'package:flash_feed/view/widget/NewsContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late  NewsArt newsArt;
 GetNews() async {
  newsArt = await FetchNews.fetchNews();
  setState(() {

  });
 }
  @override
  void initState()  {
   GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController (initialPage: 0 ),
       scrollDirection: Axis.vertical,
       onPageChanged:(value) {
         GetNews();

       },
       itemBuilder: (context,index){


    return NewsContainer(
        imgUrl:
        newsArt.imgUrl,
        newsHead:
            newsArt.newsHead,
        newsDes:
       newsArt.newsDes,
        newscnt:
        newsArt.newscnt,
       newsurl:
    newsArt.newsurl);
    }),
    );
  }
}

