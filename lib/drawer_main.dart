import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iedc/HomePage.dart';
import 'package:iedc/event.dart';
import 'HomePage.dart';
import 'package:path/path.dart';

Widget drawer(BuildContext context){
  navigateToSignin() async {
    Navigator.pushReplacementNamed(context, "Signin");
  }
  navigateToAbout() async {
    Navigator.pushReplacementNamed(context, "About");
  }
  return Drawer(
        
        child: Container( 
          color: Color.fromARGB(255, 2, 2, 2),
          
          
          child: ListView(
          // Important: Remove any padding from the ListView.
          
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 2, 2, 2),
                image: DecorationImage(
                  image: AssetImage("images/iedc_logo.png"),
                  fit: BoxFit.contain
                  ),
                 
          gradient: RadialGradient(
               colors: [ Color.fromARGB(255, 23, 26, 32),Color(0xff121212),],
              //begin: Alignment.bottomLeft,
               //end: Alignment.topRight,
               radius: 0.7,
            
          )
          
              ),
              child: Text(''),
            ),
            ListTile(
              title: 
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 255,255,255)),
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Text(
              'About',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
                ),
              
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                navigateToAbout();
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title:
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 255,255,255)),
                borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Text(
              'Sign In',
              style: GoogleFonts.adventPro(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
                
              ),
              textAlign: TextAlign.center,
              
            ),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                navigateToSignin();
              },
            ),
          ],
        ),
        ),
      );
}