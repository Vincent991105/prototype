import 'package:flutter/material.dart';
//import 'package:prototype/project.dart';
//import 'Textitem.dart';

class item004 extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    final List<IconData> icon = [Icons.phone,Icons.contact_mail];
    final List<String> data = ['905392961','qwer0122683312@gmail.com'];
    //double screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
      height: 50,
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: List.generate(data.length, (index) {///list.generate(用於有寬度限制的list)
          return index == 0
              ? Container(
                  margin: EdgeInsets.only(right: index < data.length - 1 ? 10 : 0),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF00B47E),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(icon[index], color: Colors.white),
                      SizedBox(width: 5),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Text(data[index]),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: index < data.length - 1 ? 10 : 0),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF00B47E),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(icon[index], color: Colors.white),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Text(data[index],overflow: TextOverflow.ellipsis,),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        }),
      ),
    );
  }
}