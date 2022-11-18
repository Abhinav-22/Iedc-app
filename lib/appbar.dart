import 'package:flutter/material.dart';
import 'package:iedc/HomePage.dart';
import 'package:iedc/event.dart';
import 'HomePage.dart';
import 'package:path/path.dart';

Widget bar(){
  return AppBar(
        
        backgroundColor: Color.fromARGB(255, 39, 43, 52),
        centerTitle: true,
        // title: Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //           image: AssetImage("images/iedc_logo.png"),
        //           fit: BoxFit.fitWidth
        //           ),
        //   ),
        // ),
        title: Text('RSET IEDC',
        style: TextStyle(color: Color(0xffDAA520)),
        ),
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.menu),//menu
        //   ),
          actions: [IconButton(onPressed: (){}, 
          icon: Icon(Icons.search) // search
          )],
      );
}