import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
String s1="";
class showEvents extends StatelessWidget {

  final Stream<QuerySnapshot> events = FirebaseFirestore.instance.collection('events').snapshots();
  showEvents();

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('events');

    FirebaseFirestore.instance
        .collection('events')
        .doc("e0bKl5aRu5VqGWqUGS6y")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        String s1=documentSnapshot.data().toString();
      } else {
        print('Document does not exist on the database');
      }
    });

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[

            ListTile(
              tileColor : Colors.redAccent,
              leading: Icon(Icons.house),
              title: Text('Department of CSE - Hackathon'),
            ),

            ListTile(
              tileColor : Colors.lightGreenAccent,
              leading: Icon(Icons.house),
              title: Text('Department of ECE - Robotic Workshop'),
            ),

            ListTile(
              tileColor : Colors.redAccent,
              leading: Icon(Icons.house),
              title: Text('Department of ME - Arduino Lab'),
            ),

            ListTile(
              tileColor : Colors.lightGreenAccent,
              leading: Icon(Icons.house),
              title: Text('Amphitheatre - Cultura'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Auditorium - Nothing'),
            ),

            ListTile(
              tileColor : Colors.lightGreenAccent,
              leading: Icon(Icons.house),
              title: Text('CPA - Art Workshop'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of ISE - Nothing'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of EEE - Nothing'),
            ),

            ListTile(
              tileColor : Colors.redAccent,
              leading: Icon(Icons.house),
              title: Text('Department of ETE - MP Workshop'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of CVE - Nothing'),
            ),

            ListTile(
              tileColor : Colors.lightGreenAccent,
              leading: Icon(Icons.house),
              title: Text('Football Ground - Hockey Match'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of CE - Nothing'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of BTE - Nothing'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of EEE - Nothing'),
            ),

            ListTile(
              tileColor : Colors.redAccent,
              leading: Icon(Icons.house),
              title: Text('Business Block - Induction Program'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of AE - Nothing'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of EIE - Nothing'),
            ),

          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
    //Firebase.initializeApp();
    //Create a CollectionReference called users that references the firestore collection
    //FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
    //FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: secondaryApp);
  }
}