import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final List<String> items = <String>['Apple', 'Banana', 'Orange', 'Grapes', 'Mango'];
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100, 50, 10];
  final List<String> cn_title = ['馬來西亞人','淡江資傳系','天蠍座','領導者'];
  final List<String> en_title = ['Malaysian','TKUIC','Scorpio','ENFJ'];
  final List<String> image = [
    'assets/figma-file_svgrepo.com.png', 
    'assets/figma-file_svgrepo.com.png', 
    'assets/figma-file_svgrepo.com.png', 
    'assets/figma-file_svgrepo.com.png', 
    'assets/figma-file_svgrepo.com.png'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder Example'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount : cn_title.length,
          itemBuilder:(BuildContext context, int index){
            return Expanded(
              child:Container(
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
                      style: TextStyle(
                        fontSize: 18,
                        color:Color(0xFF00B47E),
                        fontWeight: FontWeight.bold,
                        height:1
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}