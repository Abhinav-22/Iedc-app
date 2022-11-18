import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iedc/appbar.dart';
import 'package:iedc/drawer_admin.dart';
import 'package:iedc/drawer_main.dart';
import 'package:iedc/event.dart';
import 'package:iedc/listup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'slider_item.dart';



class AdminHomePage extends StatefulWidget {
  

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {


 navigateToHome() async {
    Navigator.pushReplacementNamed(context, "HomePage");
 }
  List<String> img = ['images/1.png','images/poster-Final.png'];
  List<String> names = ['Lock n Key','event1',];
  // navigatetoevent() {
  //   Navigator.push(
  //     context, MaterialPageRoute(builder: (context)=> EventPage()));
  // }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xff0a0d16),
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
      child: bar()),
      drawer: drawerAdmin(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Gallery',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 24.0,
            //     fontWeight: FontWeight.w300,
            //   ),
            // ),
            //SizedBox(height: 12.0,),
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                aspectRatio: 16/9,
                viewportFraction: 1,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 5),
                //autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: [
                for(var item=0;item<img.length;item++)sliderItem(img[item],names[item]),
                
                  
              
            ],
            ),
            
            SizedBox(height: 12.0,),
            
              Text(
              'Upcomimg Eventsss',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            
            
            
            SizedBox(height: 10,),
            Container(
              height:200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var i=0;i<img.length;i++ )listItem(context,img[i],names[i]),
                  SizedBox(width: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      primary: Color.fromARGB(255, 35, 39, 49).withOpacity(0.3),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.white.withOpacity(0.8))
                      ),
                      ),
                      //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      onPressed: () {print("object");},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.add,color: Colors.white,),
                        Text('Add Event',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),],),
                      //color: Color.fromARGB(255, 35, 39, 49).withOpacity(0.3),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(20.0),
                      //   side: BorderSide(color: Colors.white.withOpacity(0.8))
                      // ),
                      
                      
                    ),
                  
                 
                ],
              ),
            ),
            SizedBox(height: 12.0,),
            Text(
              'Past Events',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height:200,
              width: double.infinity,
              child: ListView(
                
                scrollDirection: Axis.horizontal,
                children: [
                  listItem(context,img[0], "name"),
                  listItem(context,img[1], "kaka"),
                  listItem(context,img[0], "name"),
                  listItem(context,img[1], "kaka"),
                  listItem(context,img[0], "name"),
                  listItem(context,img[1], "kaka"),
                  SizedBox(width: 10,),
                  Container(
                    height: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      primary: Color.fromARGB(255, 35, 39, 49).withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.white.withOpacity(0.8))
                      ),
                      ),
                      //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      onPressed: () {print("object");},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.add,color: Colors.white,),
                        Text('Add Events',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                              ],
                              ),
                      //color: Color.fromARGB(255, 35, 39, 49).withOpacity(0.3),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(20.0),
                      //   side: BorderSide(color: Colors.white.withOpacity(0.8))
                      // ),
                      
                      
                    ),)
                  
                  
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
            child:ElevatedButton(onPressed: (){navigateToHome();},
                          style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 55, 61, 76).withOpacity(0.5)),),
                         child: Text('Log Out',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold)),
                              )
                              )
          ],
        ),
      ),
    );
  }
}
