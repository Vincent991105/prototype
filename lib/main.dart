//import 'dart:js_interop';
//import 'dart:math';
import 'package:prototype/profile.dart';
import 'package:prototype/test.dart';
import 'package:url_launcher/url_launcher.dart';

import 'project.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Textitem.dart';
import 'item002.dart';
import 'item003.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

Widget container() {
  return Container(
  );
}

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double firsttextsize = 18.0;
    double scaledfirstTextSize = firsttextsize * screenWidth / 500.0;
  
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), 
        child: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child:Image.asset('assets/logo.png', width: 80, height: 80,),
            ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '作品集',
                style: TextStyle(
                  fontSize: 12,
                  height: 0.95,
                  color: Color(0xFF6A6A6A),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2,),
              Text(
                'PortFolio',
                style: TextStyle(
                  fontSize: 18,
                  height: 0.95,
                  color: Color(0xFF6A6A6A),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions:[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'made by vincent',
                style: TextStyle(
                  fontSize: 12,
                  height: 0.95,
                  color: Color(0xFF00B47E),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              item002(),
              item003(),
              Container(
                padding: EdgeInsets.all(10),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '技能介紹',
                      style: TextStyle(
                        fontSize: 12,
                        color:Color(0xFF6A6A6A),
                        fontWeight: FontWeight.bold,
                        height:1
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'skill',
                      style: TextStyle(
                        fontSize: 18,
                        color:Color(0xFF6A6A6A),
                        fontWeight: FontWeight.bold,
                        height:1
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('assets/figma-file_svgrepo.com.png',width: 50,height: 50,),
                        Image.asset('assets/PowerAutomate_scalable 1.png',width: 50,height: 50,),
                        Image.asset('assets/adobe-illustrator_svgrepo.com.png',width: 50,height: 50,),
                        Image.asset('assets/adobe-photoshop_svgrepo.com.png',width: 50,height: 50,),
                        Image.asset('assets/adobe-dreamweaver_svgrepo.com.png',width: 50,height: 50,),
                        Image.asset('assets/googlesheets_svgrepo.com.png',width: 50,height: 50,),
                      ],),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                          Image.asset('assets/Flutter.png',width: 50,height: 50,),
                          SizedBox(height: 5,),
                          Text(
                            'learning...',
                            style: TextStyle(
                              fontSize: 10,
                              color:Color(0xFF6A6A6A),
                              height:1
                            ),
                          ),
                        ],)
                      ],)
                  ],),
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF00B47E)),
            label: '首頁',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment, color: Color(0xFF00B47E)),
            label: '留言',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail, color: Color(0xFF00B47E)),
            label: '聯絡我',
          ),
        ],
        selectedLabelStyle: TextStyle(color: Color(0xFF00B47E)),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        onTap: (int index) {
          // 根据点击的索引进行页面导航
          if (index == 0) { // 如果点击了首页图标
            // 执行返回到首页的操作，比如弹出所有页面直到首页
            Navigator.of(context).popUntil((route) => route.isFirst);
          } 
          if (index == 1) { // 如果点击了首页图标
            // 执行返回到首页的操作，比如弹出所有页面直到首页
            _launchURL();
          } 
          if (index == 2) { // 如果点击了首页图标
            // 执行返回到首页的操作，比如弹出所有页面直到首页
            Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()),);
          } 
          else {
            setState(() {
              _currentIndex = index; // 更新当前索引为点击的索引
            });
          }
        }, // 设置未选中标签的颜色
      ),
      // Function to launch URL
    );
  }
  void _launchURL() async {
    const url = 'https://www.google.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
