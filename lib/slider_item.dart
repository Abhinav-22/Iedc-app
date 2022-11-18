import 'package:flutter/material.dart';

Widget sliderItem(String img,String name){

  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          //height: 200,
          //width: double.infinity,
          child: Container(
          height: double.infinity,
          //width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.contain,
              )
          ),
        ),
        ),
        
        SizedBox(height: 15.0,),
        Center(child: Text(name,
        textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.w100,
            ),
        ),
        ),
        

      ],
    ),
  );
}