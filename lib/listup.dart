

import 'package:flutter/material.dart';
import 'package:iedc/HomePage.dart';
import 'package:iedc/event.dart';
import 'HomePage.dart';
import 'package:path/path.dart';



Widget listItem(BuildContext context, String img,String name){
  navigatetoevent() { // navigate to event page
    Navigator.push(
      context, MaterialPageRoute(builder: (context)=> EventPage()));
  }
  return Row(
    children: [
      SizedBox(width: 18,),
         Container(
     //height: 120,
      width: 120,
      //padding: EdgeInsets.only(right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         height: 150,
         width: double.infinity,
        
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(img),
          )
        ),
        child: GestureDetector(onTap:() {navigatetoevent();}),
        ),
        Center(child: Text(name,
        textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w100,
            ),
        ),
        ),
        //SizedBox(width: 15,)
      ],
      )
  )
    ],
  );
}