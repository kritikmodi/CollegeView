import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
String s1="";
class showAnnouncements extends StatelessWidget {

  final Stream<QuerySnapshot> events = FirebaseFirestore.instance.collection('events').snapshots();
  showAnnouncements();

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
              leading: Icon(Icons.announcement),
              title: Text('CSE Hackathon has started!'),
            ),

            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('6th Semester exams starting from 02/09/21!'),
            ),

            ListTile(
              tileColor : Colors.redAccent,
              leading: Icon(Icons.announcement),
              title: Text('College will be fully closed tomorrow!'),
            ),

            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('Submission of fees starting next month!'),
            ),



            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('MOU signed with Surya Softwares!'),
            ),

            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('2nd year students can collect their ids!'),
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