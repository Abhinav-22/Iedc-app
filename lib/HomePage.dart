import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iedc/appbar.dart';
import 'package:iedc/drawer_main.dart';
import 'package:iedc/event.dart';
import 'package:iedc/listup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'slider_item.dart';

class HomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> img = ['images/1.png', 'images/poster-Final.png'];
  List<String> names = [];
  // navigatetoevent() {
  //   Navigator.push(
  //     context, MaterialPageRoute(builder: (context)=> EventPage()));
  // }
  CollectionReference _ref = FirebaseFirestore.instance.collection('events');
  late Stream<QuerySnapshot> _stream;
  final db = FirebaseFirestore.instance;
  initState() {
    _stream = _ref.snapshots();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0d16),
      appBar:
          PreferredSize(preferredSize: const Size.fromHeight(60), child: bar()),
      drawer: drawer(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
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
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 5),
                //autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: [
                for (var item = 0; item < img.length; item++)
                  sliderItem(img[item], names[item]),
              ],
            ),

            SizedBox(
              height: 12.0,
            ),
            Text(
              'Upcomimg Events',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var i = 0; i < img.length; i++)
                    listItem(context, img[i], names[i])
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'Past Events',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listItem(context, img[0], "name"),
                  listItem(context, img[1], "kaka"),
                  listItem(context, img[0], "name"),
                  listItem(context, img[1], "kaka"),
                  listItem(context, img[0], "name"),
                  listItem(context, img[1], "kaka"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build1(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("hi"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (snapshot.connectionState == ConnectionState.active) {
            // QuerySnapshot querySnapshot = snapshot.data;
            // //print(querySnapshot);
            // // return Center(child: Text(querySnapshot.data().toString()));
            // List<QueryDocumentSnapshot> listQueryDocumentSnapshot =
            //     querySnapshot.docs;
            // var data =
            //     Map<String, dynamic>.from(querySnapshot.docs[0].data() as Map);
            // final docRef = db.collection("books").doc("4kgn4zqg7A1ejhIq4WqQ");
            // docRef.get().then(
            //   (DocumentSnapshot doc) {
            //     final data = doc.data() as Map<String, dynamic>;
            //     // ...
            //   },
            //   onError: (e) => print("Error getting document: $e"),
            // );

            // //return Center(child: Text(data['4kgn4zqg7A1ejhIq4WqQ']));
            // print(data);
            // return Center(child: (Text(docRef.snapshots.toString())));

            db.collection("events").snapshots().listen((event) {
              for (var doc in event.docs) {
                names.add(doc.data()["event_name"]);
              }
              print("eventname : ${names.join(",")}");
            });
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // throw Exception()
          // ;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
