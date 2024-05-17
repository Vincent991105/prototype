import 'dart:ui';
import 'package:prototype/profile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:prototype/Textitem.dart';
import 'package:prototype/item001.dart';
import 'package:prototype/item004.dart';

class Profile extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<Profile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    TextStyle GreenBold16 = getGreenBold14(screenWidth);

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
        child: Column(
          children: <Widget>[
            itme001(),
            item004(),
            
          ],
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