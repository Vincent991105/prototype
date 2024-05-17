import 'package:flutter/material.dart';
import 'package:prototype/project.dart';
import 'Textitem.dart';

class item003 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final List<String> cn_title = ['大城保經','鴻陽運動','德利信.TPHM'];
    final List<String> sub_title = ['網站工讀生','櫃檯秘書','資材專員'];
    final List<String> image = [
    'assets/hib.png', 
    'assets/hy.png', 
    'assets/tan.jpg',  ];
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
      padding: EdgeInsets.all(10),
      child:Column(children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '就業說明',
                style: TextStyle(
                  fontSize: 12,
                  color:Color(0xFF6A6A6A),
                  fontWeight: FontWeight.bold,
                  height:1
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'Job & Experience',
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
        SizedBox(height: 10,),
        ///以上為標題
        Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF6A6A6A),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 0.1,),
            Expanded(
              child:Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10.0),
                  ),
                  color: Colors.white,
                ),
                //child: SizedBox(width: 250, height: 100),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Image.asset(
                      'assets/partner.png', // 替換成您的圖片路徑
                      width: constraints.maxWidth, // 使用容器的寬度作為圖片的寬度
                      height: 100, // 固定高度
                      fit: BoxFit.contain, // 自動縮放以適應容器
                    );
                  },
                ),                    
              ),
            ),
            Expanded( // 將 Column 包裹在 Expanded 中
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '和盟電子商務',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                  Text(
                    '專案助理',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      //height: 1,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        // 导航到新页面
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProjectPage()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF00B47E)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: Text(
                        '查看專案',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          //fontWeight: FontWeight.,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10,),
      ///以上為第一則需求
      Container(
        height: 100,
        //width: MediaQuery.of(context).size.width,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount : cn_title.length,
          itemBuilder:(BuildContext context, int index){///listview(可滑動的list)
            return Expanded(
              child:Container(
                margin: index < cn_title.length - 1 ? EdgeInsets.fromLTRB(0, 0, 10, 0) : null,
                height: 100,
                width: screenWidth / cn_title.length , // 平均分攤寬度
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF6A6A6A),
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                        color: Colors.white,
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Image.asset(
                            image[index], // 替換成您的圖片路徑
                            width: constraints.maxWidth, // 使用容器的寬度作為圖片的寬度
                            height: 40, // 固定高度
                            fit: BoxFit.contain, // 自動縮放以適應容器
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            cn_title[index],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                          Text(
                            sub_title[index],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              //height: 1,
                            ),
                          ),
                        ],))
                  ],
                ),
              ),
            );
          },
        ),
      )
      ],),
    );
  }
}