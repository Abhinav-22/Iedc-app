
import 'package:iedc/HomePage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iedc/HomePage.dart';
import 'package:iedc/drawer_main.dart';
import 'package:iedc/listup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:path/path.dart';
import 'appbar.dart';
import 'slider_item.dart';
import 'package:google_fonts/google_fonts.dart';


class EventPage extends StatefulWidget {
  

 
  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
 
  //List<String> img = ['images/1.png','images/poster-Final.png'];
  //List<String> names = ['Lock n Key','event2',];
  navigatetohome() {
    Navigator.push(
      this.context, MaterialPageRoute(builder: (context)=> HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xff0a0d16),
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
      child: bar()),
      drawer: drawer(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height:300,
              width: double.infinity,
              //child: Expanded(
          //height: 200,
          //width: double.infinity,
          child:Container(
          //height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage("images/1.png"),
              fit: BoxFit.scaleDown,
              )
          ),
        ),
        ),
            //),
            SizedBox(height: 12.0,),
            Center(child: Text(
              'Event Name',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
            ),),
            
            SizedBox(height: 10,),
            Center(child:Container(
              width:MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(10))
                
                ),
              //width: double.infinity,
              child:Row (
                children:[
                  
                  Container(
                    padding: EdgeInsets.all(5),
                    child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //scrollDirection: Axis.horizontal,
                children: [
                 Row(children: [
                  Icon(Icons.calendar_month,color: Colors.white,),
                  SizedBox(width: 15,),
                  Text(
              '10-10-2022',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
              ),
            ),
                 ],),
                 SizedBox(height: 15,),
                 Row(children: [
                  Icon(Icons.location_on,color: Colors.white,),
                  SizedBox(width: 15,),
                  Text(
              'K.E Audiorium',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
              ),
            ),
                 ],),
                 
                ],
              ),
              ),
              SizedBox(width: 10,),
              Container(
                alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    border:Border( left: BorderSide(width: 5.0, color: Colors.white),),),
                    padding: EdgeInsets.all(5),
                    
                    child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //scrollDirection: Axis.horizontal,
                children: [
                 Row(children: [
                  Icon(Icons.timer,color: Colors.white,),
                  SizedBox(width: 15,),
                  Text(
              '10-10-2022',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
              ),
            ),
                 ],),
                 SizedBox(height: 15,),
                 Row(children: [
                  Icon(Icons.currency_rupee_sharp,color: Colors.white,),
                  SizedBox(width: 15,),
                  Text(
              'Free',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
              ),
            ),
                 ],),
                 
                ],
              ),
              ),
              ]
              )
            )
            ),
            //Icon(Icons.egg_rounded,color: Colors.white,),
            Center(child:TextButton(onPressed: (){}, 
                 child: Container(
                  padding: EdgeInsets.all(10),
                  width: 100,
                  decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 94, 234, 98)),
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                  child:Text(
              'Register',
              textAlign: TextAlign.center,
              style: GoogleFonts.adventPro(
                color: Color.fromARGB(255, 94, 234, 98),
                fontSize: 19.0,
        
                fontWeight: FontWeight.w500,
              ),
            ),
            )
            ),
            ),
            SizedBox(height: 15,),
            Text(
              'Event Write-Up',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
