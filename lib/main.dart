import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String appBarTitle = "마법의 소라고동님"; 
  String title1 = "마법의 소라고동님은";
  String title2 = "다 알고 계신다";

  int randomNum = 0;

  var text = ["안돼", "그래", "글쎄", "다시 한 번 물어봐", "언젠가는", "가만히 있어", "그것도 안 돼", "굶어"];
  String say = "마법의 소라고동님께서 말씀 하시길";
  String answer = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text(appBarTitle, style: TextStyle(fontSize: 20, fontFamily: 'CookieRun'),),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 40,),
                Text(title1, style: TextStyle(fontSize: 30, fontFamily: 'CookieRun'),),
                Text(title2, style: TextStyle(fontSize: 30, fontFamily: 'CookieRun'),),
                SizedBox(height: 30,),
                InkWell(
                  onTap: () {
                    randomNum = Random.secure().nextInt(8);
                    setState(() {
                      answer = text[randomNum];
                    });
                  },
                  child:Image(image: AssetImage('assets/shell.jpg')),
                ),
                SizedBox(height: 30),
                Text(say, style: TextStyle(fontSize: 20, fontFamily: 'CookieRun'),),
                SizedBox(height: 20),
                Text(answer, style: TextStyle(fontSize: 30, fontFamily: 'CookieRun'),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}