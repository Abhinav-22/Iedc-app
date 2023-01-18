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

List<Userget> list1 = [];

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

class Userget {
  late String name, date, fee, description, venue, contact1, contact2;
  Userget(
      {required this.name,
      //   required this.date,
      required this.fee,
      required this.description,
      required this.venue,
      required this.contact1,
      required this.contact2});

  factory Userget.fromJson(Map<String, dynamic> json) {
    return Userget(
        name: json['event_name'],
        //   date : json['Date'],
        fee: json['Fee'],
        description: json['Description'],
        venue: json['Venue'],
        contact1: json['contact1'],
        contact2: json['contact2']);
  }
  String getname(Userget element) {
    return element.name;
  }

  String getfee(Userget element) {
    return element.fee;
  }

  String getdescription(Userget element) {
    return element.description;
  }

  String getvenue(Userget element) {
    return element.venue;
  }

  String getcontact1(Userget element) {
    return element.contact1;
  }

  String getcontact2(Userget element) {
    return element.contact2;
  }
}
// final db = FirebaseFirestore.instance;
// CollectionReference _ref = FirebaseFirestore.instance.collection('events');
// final names = [];
// late Stream<QuerySnapshot> _stream;

class _HomePageState extends State<HomePage> {
  List<String> img = [
    'images/1.png',
    'images/poster-Final.png',
  ];
  List<String> names = ['Lock & Key', 'abc'];

  // navigatetoevent() {
  //   Navigator.push(
  //     context, MaterialPageRoute(builder: (context)=> EventPage()));
  // }
  void initi() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  CollectionReference _ref = FirebaseFirestore.instance.collection('events');
  late Stream<QuerySnapshot> _stream;
  final db = FirebaseFirestore.instance;
  initState() {
    _stream = _ref.snapshots();
    // (BuildContext context, AsyncSnapshot snapshot) {
    //   if (snapshot.hasError) {
    //     // return Center(child: Text(snapshot.error.toString()));
    //     print("error");
    //   }
    //   if (snapshot.connectionState == ConnectionState.active) {
    //     db.collection("events").snapshots().listen((event) {
    //       for (var doc in event.docs) {
    //         names.add(doc.data()["event_name"]);
    //       }
    //       print("event names : ${names.join(",")}");
    //     });
    //   }
    //   // return Center(child: CircularProgressIndicator());
    //   print("waiting");
    // };
    super.initState();
    initi();
    getlist();
  }

  Widget _buildListItems(BuildContext context, DocumentSnapshot document) {
    return ListTile(
        title: Row(
      children: [
        Flexible(
          child: Flexible(
            child: Text(
              document['event_name'].toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    getlist();
    return Scaffold(
      backgroundColor: Color(0xff0a0d16),
      appBar:
          PreferredSize(preferredSize: const Size.fromHeight(60), child: bar()),
      drawer: drawer(context),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('events').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // StreamBuilder<QuerySnapshot>(
                  //   stream: _stream,
                  //   builder: (BuildContext context, AsyncSnapshot snapshot) {
                  //     if (snapshot.hasError) {
                  //       return Center(child: Text(snapshot.error.toString()));
                  //     }
                  //     if (snapshot.connectionState == ConnectionState.active) {
                  //       // QuerySnapshot querySnapshot = snapshot.data;
                  //       // //print(querySnapshot);
                  //       // // return Center(child: Text(querySnapshot.data().toString()));
                  //       // List<QueryDocumentSnapshot> listQueryDocumentSnapshot =
                  //       //     querySnapshot.docs;
                  //       // var data =
                  //       //     Map<String, dynamic>.from(querySnapshot.docs[0].data() as Map);
                  //       // final docRef = db.collection("books").doc("4kgn4zqg7A1ejhIq4WqQ");
                  //       // docRef.get().then(
                  //       //   (DocumentSnapshot doc) {
                  //       //     final data = doc.data() as Map<String, dynamic>;
                  //       //     // ...
                  //       //   },
                  //       //   onError: (e) => print("Error getting document: $e"),
                  //       // );

                  //       // //return Center(child: Text(data['4kgn4zqg7A1ejhIq4WqQ']));
                  //       // print(data);
                  //       // return Center(child: (Text(docRef.snapshots.toString())));

                  //       db.collection("events").snapshots().listen((event) {
                  //         for (var doc in event.docs) {
                  //           names.add(doc.data()["event_name"]);
                  //         }
                  //         print("bookname : ${names.join(",")}");
                  //       });
                  //     }
                  //     return Center(child: CircularProgressIndicator());
                  //   },
                  // ),

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
                      // for (var item = 0; item < 2; item++)
                      //   sliderItem(img[item], list1[item].getname(list1[item])),
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
                    height: 20,
                    width: double.infinity,
                    // child: ListView(
                    //   scrollDirection: Axis.horizontal,
                    //   children: [
                    //     // for (var i = 0; i < names.length; i++)
                    //     //   listItem(context, img[i], list1[i].getname(list1[i]))
                    //   ],
                    // ),
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
                    child: ListView.builder(
                      itemCount: (snapshot.data! as QuerySnapshot).docs.length,
                      itemBuilder: ((context, index) => _buildListItems(context,
                          (snapshot.data! as QuerySnapshot).docs[index])),
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

void getlist() async {
  final list = await FirebaseFirestore.instance.collection('Users').get();
  list1 = list.docs.map((d) => Userget.fromJson(d.data())).toList();
  list1.forEach((element) {
    print(element.getname(element));
  });
}
