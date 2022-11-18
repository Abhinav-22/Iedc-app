// @dart=2.9
import 'package:iedc/AdminHome.dart';
import 'package:iedc/about.dart';
import 'package:iedc/signin.dart';

import 'HomePage.dart';
import 'package:flutter/material.dart';
import 'package:iedc/HomePage.dart';
import 'event.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RSET IEDC',
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "HomePage": (BuildContext context) => HomePage(),
        "Event": (BuildContext context) => EventPage(),
        "Signin": (BuildContext context) => SignIn(),
        "Adminhome": (BuildContext context) => AdminHomePage(),
        "About": (BuildContext context) => AboutPage(),
      },
    );
  }
}
