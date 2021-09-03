import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
String s1="";
class showDepartments extends StatelessWidget {

  final Stream<QuerySnapshot> events = FirebaseFirestore.instance.collection('events').snapshots();
  showDepartments();

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
              leading: Icon(Icons.house),
              title: Text('Department of CSE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of ECE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of ME'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of ISE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of EEE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of ETE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of CVE'),
            ),


            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of CE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of BTE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of EEE'),
            ),


            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of AE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of EIE'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of ML'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of Business'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of Chemistry'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of Mathematics'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of Physics'),
            ),

            ListTile(
              leading: Icon(Icons.house),
              title: Text('Department of Commerce'),
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