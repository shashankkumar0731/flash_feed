import 'package:flash_feed/view/Detail_view.dart';
import 'package:flutter/material.dart';


class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
   String newsurl;
   String newscnt;

  NewsContainer({ super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newscnt,
    required this.newsurl,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              height: 350,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              fit: BoxFit.cover
              , imgUrl),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(
                    newsHead.length > 90
                        ? "${newsHead.substring(0, 90)}..."
                        : newsHead,
                    style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text( newsDes,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    newscnt != "--" ?
                    newscnt.length > 100
                        ? newscnt.substring(0, 100)
                        : "${newscnt.toString().substring(
                        0, newscnt.length - 10)}..." : newscnt,
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          DetailViewScreen(newsurl: newsurl,)));
                },
                    child: Text("Read More")),
              ),
            ],
          ),
          SizedBox(height: 20,),
        ],),

    );
  }
}
