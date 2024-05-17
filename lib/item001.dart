import 'package:flutter/material.dart';
import 'Textitem.dart'; // 假設您的文字樣式定義在這個文件中

class itme001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    TextStyle GreenBold18 = getGreenBold18(screenWidth);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,// 使用 getMyTextStyle 返回的文字樣式
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
                      child:Stack(
                        children:[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color:Colors.grey,
                            ),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Image.asset(
                                  'assets/profile.jpg', // 替換成您的圖片路徑
                                  width: constraints.maxWidth, // 使用容器的寬度作為圖片的寬度
                                  height: 180, // 固定高度
                                  fit: BoxFit.contain, // 自動縮放以適應容器
                                );
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 3, // 從頂部的偏移量
                            left: 7, // 從左側的偏移量
                            child: Row(
                              children: <Widget>[
                                Container(
                                  //height: 20,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF00B47E)
                                  ),
                                  child:Text(
                                    '#Vincent',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                    )
                                )
                            ],)
                          ),
                        ]
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "【座右銘】",
                          style: TextStyle(
                            fontSize: 14,
                            //height: 0.95,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height:10),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          //height: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.white,
                          ),
                          child:Column(
                            children:<Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '只要是',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                    TextSpan(
                                      text: '喜歡',
                                      style: GreenBold18,
                                    ),
                                    TextSpan(
                                      text: '的事情,',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '就有拼命的',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                    TextSpan(
                                      text: '價值',
                                      style: TextStyle(color: Color(0xFF00B47E,),
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    TextSpan(
                                      text: '。',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          )
                        ),
                        SizedBox(height:10),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          //height: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.white,
                          ),
                          child:Column(
                            children:<Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '對的',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                    TextSpan(
                                      text: '人',
                                      style: GreenBold18,
                                    ),
                                    TextSpan(
                                      text: ',在對的',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                    TextSpan(
                                      text: '位置',
                                      style: GreenBold18,
                                    ),
                                    TextSpan(
                                      text: ',',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '才能產生對的',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                    TextSpan(
                                      text: '能量',
                                      style: TextStyle(color: Color(0xFF00B47E,),
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    TextSpan(
                                      text: '。',
                                      style: TextStyle(color: Color(0xFF6A6A6A)),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                          )
                        )
                      ],
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}