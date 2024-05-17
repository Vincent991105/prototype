// project.dart
import 'package:prototype/profile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  int _currentIndex = 0;
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screensize = MediaQuery.of(context).size.width;
    double firsttextsize = 18.0;
    double scaledfirstTextSize = firsttextsize * screensize / 500.0;
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 200,
              color: Color(0xFF6A6A6A),
              child:Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child:Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color:Colors.grey,
                            ),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Image.asset(
                                  'assets/projectmanager.png', // 替換成您的圖片路徑
                                  width: constraints.maxWidth, // 使用容器的寬度作為圖片的寬度
                                  height: 180, // 固定高度
                                  fit: BoxFit.contain, // 自動縮放以適應容器
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: IndexedStack(
                            index: _currentIndex,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.laptop_chromebook_rounded, color: Color(0xFF00B47E),size:30),
                                        SizedBox(width: 10,),
                                        Expanded(child: 
                                          Text(
                                            '職務範疇',
                                            style: TextStyle(
                                              fontSize: scaledfirstTextSize,
                                              color: Color(0xFF00B47E),
                                              fontWeight: FontWeight.bold,
                                              height:1
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 35,                                          
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Color(0xFF00B47E), 
                                          ),
                                          child:IconButton(                                              
                                            onPressed: () {
                                            setState(() {
                                            _currentIndex = (_currentIndex + 1) % 2; // 切换 index，实现内容切换
                                          });
                                          },
                                          icon:Icon(Icons.swap_horiz),
                                          color: Colors.white,
                                          iconSize: 20,
                                          )
                                        ),
                                      ],),
                                    Expanded(
                                      child:Container(
                                      padding: EdgeInsets.all(5),
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "管理專案進度",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "內部及外部的溝通",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "需求研究及規劃",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "介面設計",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "功能測試和交付",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ),
                                  ),  
                                  ],)
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.insert_chart, color: Color(0xFF00B47E),size:30),
                                        SizedBox(width: 10,),
                                        Expanded(child: 
                                          Text(
                                            '作業比例',
                                            style: TextStyle(
                                              fontSize: scaledfirstTextSize,
                                              color: Color(0xFF00B47E),
                                              fontWeight: FontWeight.bold,
                                              height:1
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 35,                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Color(0xFF00B47E), 
                                          ),
                                          child:IconButton(                                              
                                            onPressed: () {
                                            setState(() {
                                            _currentIndex = (_currentIndex + 1) % 2; // 切换 index，实现内容切换
                                          });
                                          },
                                          icon:Icon(Icons.swap_horiz),
                                          color: Colors.white,
                                          iconSize: 20,
                                          )
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '管理',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF6A6A6A),
                                                    fontWeight: FontWeight.bold,
                                                    height:1
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal:5),
                                                  height: 25,
                                                  width: MediaQuery.of(context).size.width * 0.1,
                                                  alignment: Alignment.centerRight,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    color: Color(0xFF00B47E),
                                                  ),
                                                  child:Text(
                                                    '15%',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.normal,
                                                      height:1
                                                    ),
                                                  ),
                                                ), 
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '研究',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF6A6A6A),
                                                    fontWeight: FontWeight.bold,
                                                    height:1
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal:5),
                                                  height: 25,
                                                  width: MediaQuery.of(context).size.width * 0.25,
                                                  alignment: Alignment.centerRight,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    color: Color(0xFF00B47E),
                                                  ),
                                                  child:Text(
                                                    '30%',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.normal,
                                                      height:1
                                                    ),
                                                  ),
                                                ), 
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '規劃',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF6A6A6A),
                                                    fontWeight: FontWeight.bold,
                                                    height:1
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal:5),
                                                  height: 25,
                                                  width: MediaQuery.of(context).size.width * 0.25,
                                                  alignment: Alignment.centerRight,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    color: Color(0xFF00B47E),
                                                  ),
                                                  child:Text(
                                                    '30%',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.normal,
                                                      height:1
                                                    ),
                                                  ),
                                                ), 
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '測試',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF6A6A6A),
                                                    fontWeight: FontWeight.bold,
                                                    height:1
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal:5),
                                                  height: 25,
                                                  width: MediaQuery.of(context).size.width * 0.2,
                                                  alignment: Alignment.centerRight,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    color: Color(0xFF00B47E),
                                                  ),
                                                  child:Text(
                                                    '25%',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.normal,
                                                      height:1
                                                    ),
                                                  ),
                                                ), 
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '專案成就',
                    style: TextStyle(
                      fontSize: 12,
                      color:Color(0xFF6A6A6A),
                      fontWeight: FontWeight.bold,
                      height:1
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Project',
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
              margin: EdgeInsets.all(10),
              child:Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:Color(0xFF6A6A6A),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                      color:Colors.white,
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Image.asset(
                          'assets/iopenmall.png', // 替換成您的圖片路徑
                          width: constraints.maxWidth, // 使用容器的寬度作為圖片的寬度
                          height: 70, // 固定高度
                          fit: BoxFit.contain, // 自動縮放以適應容器
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: _toggleExpanded,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      child:Container(
                        child:_isExpanded ? 
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Color(0xFF6A6A6A),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'IopenMall',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color:Color(0xFF00B47E),
                                                  fontWeight: FontWeight.bold,
                                                  height:1
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                '專案類型：B2B2C線上商城開發案',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color:Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold,
                                                  height:1
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:Color(0xFF00B47E),
                                            ),
                                            child:IconButton(
                                              onPressed: (){}, 
                                              icon:Icon(Icons.link),
                                              color: Colors.white,
                                            )
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '專案成就',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color:Color(0xFF00B47E),
                                              fontWeight: FontWeight.bold,
                                              //height:1
                                            ),
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "引入Figma的應用,教導PM使用Figma.",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "平台介面雛形設計",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "功能研究及開發；超過10項功能.",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                height:5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  shape:BoxShape.circle,
                                                  color: Color(0xFF6A6A6A),
                                                ),
                                                child:SizedBox(height: 5,width: 5,),
                                              ),
                                              SizedBox(width: 10,),
                                              Text(
                                                "規劃及開發RPA；節省重複作業的工時",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  //height: 0.95,
                                                  color: Color(0xFF6A6A6A),
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),///內容
                              Container(
                                height: 30,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                                  color: Color(0xFF00B47E),
                                ),
                                child:Text(
                                  '收起細節',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    height:1
                                  ),
                                ),
                              ),///綠色按鈕
                            ],
                          ),
                        )
                        : Container(
                          child: Column(
                            children: <Widget>[///內容
                              Container(
                                height: 30,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                                  color: Color(0xFF6A6A6A),
                                ),
                                child:Text(
                                  '展開細節',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    height:1
                                  ),
                                ),
                              ),///綠色按鈕
                            ],
                          ),
                        ),
                        )
                    ),
                  ),
                ],
              ),
            ),
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
