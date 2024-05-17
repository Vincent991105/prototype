import 'package:flutter/material.dart';
import 'Textitem.dart'; // 假設您的文字樣式定義在這個文件中

class item002 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> cn_title = ['馬來西亞人','淡江資傳系','天蠍座','領導者'];
    final List<String> en_title = ['Malaysian','TKUIC','Scorpio','ENFJ'];
    final List<String> image = [
    'assets/malaysia.png', 
    'assets/TKUIC.png', 
    'assets/scorpion.png', 
    'assets/enf.png', ];
    double screenWidth = MediaQuery.of(context).size.width;
    TextStyle GreenBold18 = getGreenBold18(screenWidth);
    TextStyle GreenBold16 = getGreenBold16(screenWidth);
    TextStyle GreenBold14 = getGreenBold14(screenWidth);

    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      color: Color(0xFF6A6A6A),
      child:Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '個人介紹',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height:1
                ),
              ),
              Text(
                'Introduction',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height:1
                ),
              ),
            ],
          ),
          SizedBox(height:10),
          //////紀錄////////
          Expanded(
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount : cn_title.length,
              itemBuilder:(BuildContext context, int index){
                return Expanded(
                  child:Container(
                    margin: index < cn_title.length - 1 ? EdgeInsets.fromLTRB(0, 0, 10, 0) : null,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.white,
                    ),
                    width: 130,
                    height: 150,
                    padding: EdgeInsets.all(10),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height:85,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color:Color(0xFF00B47E),
                              width: 2
                            )
                          ),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Image.asset(
                                image[index],//馬來西亞圖
                                //'assets/figma-file_svgrepo.com.png', // 替換成您的圖片路徑
                                width: constraints.maxWidth, // 使用容器的寬度作為圖片的寬度
                                //height: 85, // 固定高度
                                fit: BoxFit.contain, // 自動縮放以適應容器
                              );
                            },
                          ),
                        ),
                        SizedBox(height:10),
                        Text(
                          cn_title[index],
                          style: TextStyle(
                            fontSize: 12,
                            color:Color(0xFF6A6A6A),
                            fontWeight: FontWeight.bold,
                            height:1
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          en_title[index],
                          style: GreenBold16,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}