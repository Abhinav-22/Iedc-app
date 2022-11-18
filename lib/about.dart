
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


class AboutPage extends StatefulWidget {
  

 
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
 
  //List<String> img = ['images/1.png','images/poster-Final.png'];
  //List<String> names = ['Lock n Key','event2',];
  navigatetohome() {
    Navigator.push(
      this.context, MaterialPageRoute(builder: (context)=> HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    String abt="RSET ED Club started its activities actively from 2004, and changed to RSET IEDC from 2015 onwards. RSET IEDC is funded by KSUM, out of which Rs.2 Lakhs is utilized for student and staff IEDC activities. RSET Management has given us funds of Rs.5 lakh, which is used for establishing IEDC room and its infra-structure.Our aim is to improve Innovation, Creative thinking skills of students and thereby develop good social relevant projects and to prototype them and help them to find funding/incubation from Govt./Private sources to start a Start-up or help them be good innovators. Our mode of operation is to plan, train and monitor the IEDC activities of students in their department with the help of each faculty mentors which would aid us in achieving our mission.";
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
              height:550,
              width: double.infinity,
              //child: Expanded(
          //height: 200,
          //width: double.infinity,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
                    VerticalDivider(
              color: Color.fromARGB(255, 205, 190, 26),
              thickness: 2,
            ),
            SizedBox(width: 20,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              'About',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10,),
            Expanded(child: Text(
              abt,
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),)
              ),
            //SizedBox(width: 10,),
              ],
            )),
            SizedBox(width: 20,),
            
            
          ],)
          
        ),
        SizedBox(height:50),
        Container(
              height:280,
              width: double.infinity,
              //child: Expanded(
          //height: 200,
          //width: double.infinity,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 25,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(width: 20,),
                Text(
              'Vision',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10,),
            Expanded(child: Text(
              "“To be a self-sustained TBI catering to the needs of young student entrepreneurs with innovative ideas of social relevance and there by introducing a culture of entrepreneurship inside campus which will strengthen our education system and there by promoting the national economical and social growth”",
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),))
            
              ],
            )
            ),
            SizedBox(width: 20,),
                    VerticalDivider(
              color: Color.fromARGB(255, 205, 190, 26),
              thickness: 2,
            ),
            SizedBox(width: 20,),
            
          ],)
          
        ),
        SizedBox(height:50),
        Container(
              height:250,
              width: double.infinity,
              //child: Expanded(
          //height: 200,
          //width: double.infinity,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
                    VerticalDivider(
              color: Color.fromARGB(255, 205, 190, 26),
              thickness: 2,
            ),
            SizedBox(width: 20,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              'Mission',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10,),
            Expanded(child: Text(
              "“To develop an ecosystem with required infrastructure that can enable students and faculty to innovate and prototype their potential ideas with industrial standards and support from Government, industry and reputed academic institutions around the world and help them to realize their potentials”",
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),)
              ),
            //SizedBox(width: 10,),
              ],
            )),
            SizedBox(width: 20,),
            
            
          ],)
          
        ),
            //),
            SizedBox(height: 12.0,),
            // Center(child: Text(
            //   'Event Name',
            //   style: GoogleFonts.adventPro(
            //     color: Colors.white,
            //     fontSize: 23.0,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),),
            
            // SizedBox(height: 10,),
            // Center(child:Container(
            //   width:MediaQuery.of(context).size.width,
            //   padding: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.white),
            //     borderRadius: BorderRadius.all(Radius.circular(10))
                
            //     ),
            //   //width: double.infinity,
            //   child:Row (
            //     children:[
                  
            //       Container(
            //         padding: EdgeInsets.all(5),
            //         child:Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     //scrollDirection: Axis.horizontal,
            //     children: [
            //      Row(children: [
            //       Icon(Icons.calendar_month,color: Colors.white,),
            //       SizedBox(width: 15,),
            //       Text(
            //   '10-10-2022',
            //   style: GoogleFonts.adventPro(
            //     color: Colors.white,
            //     fontSize: 19.0,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            //      ],),
            //      SizedBox(height: 15,),
            //      Row(children: [
            //       Icon(Icons.location_on,color: Colors.white,),
            //       SizedBox(width: 15,),
            //       Text(
            //   'K.E Audiorium',
            //   style: GoogleFonts.adventPro(
            //     color: Colors.white,
            //     fontSize: 19.0,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            //      ],),
                 
            //     ],
            //   ),
            //   ),
            //   SizedBox(width: 10,),
            //   Container(
            //     alignment: Alignment.topRight,
            //       decoration: BoxDecoration(
            //         border:Border( left: BorderSide(width: 5.0, color: Colors.white),),),
            //         padding: EdgeInsets.all(5),
                    
            //         child:Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     //scrollDirection: Axis.horizontal,
            //     children: [
            //      Row(children: [
            //       Icon(Icons.timer,color: Colors.white,),
            //       SizedBox(width: 15,),
            //       Text(
            //   '10-10-2022',
            //   style: GoogleFonts.adventPro(
            //     color: Colors.white,
            //     fontSize: 19.0,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            //      ],),
            //      SizedBox(height: 15,),
            //      Row(children: [
            //       Icon(Icons.currency_rupee_sharp,color: Colors.white,),
            //       SizedBox(width: 15,),
            //       Text(
            //   'Free',
            //   style: GoogleFonts.adventPro(
            //     color: Colors.white,
            //     fontSize: 19.0,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            //      ],),
                 
            //     ],
            //   ),
            //   ),
            //   ]
            //   )
            // )
            // ),
            // //Icon(Icons.egg_rounded,color: Colors.white,),
            // Center(child:TextButton(onPressed: (){}, 
            //      child: Container(
            //       padding: EdgeInsets.all(10),
            //       width: 100,
            //       decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 94, 234, 98)),
            //     borderRadius: BorderRadius.all(Radius.circular(10))
            //     ),
            //       child:Text(
            //   'Register',
            //   textAlign: TextAlign.center,
            //   style: GoogleFonts.adventPro(
            //     color: Color.fromARGB(255, 94, 234, 98),
            //     fontSize: 19.0,
        
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            // )
            // ),
            // ),
            // SizedBox(height: 15,),
            // Text(
            //   'Event Write-Up',
            //   style: GoogleFonts.adventPro(
            //     color: Colors.white,
            //     fontSize: 19.0,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
