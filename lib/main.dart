import 'dart:js';

import 'package:flash_feed/view/home.dart';
import 'package:flash_feed/view/spalsh.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  LoadHome(){
    Future.delayed(Duration(seconds : 3),(){
    Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlashFeed',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}

