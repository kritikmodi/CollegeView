import 'package:flutter/material.dart';

import '../../announcements.dart';
import '../../departments.dart';
import '../../events.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
            child : ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'HOMEPAGE',
                        style: TextStyle(
                          color: Color(0xFF6F35A5),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          letterSpacing: 2,
                            fontFamily: 'Montserrat'
                        ),
                      ),
                    )
                ),
                ListTile(
                  title: Text(
                    'EVENTS',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return showEvents();
                        },
                      ),
                    );
                    //function
                  },
                ),
                ListTile(
                  title: Text(
                    'ANNOUNCEMENTS',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return showAnnouncements();
                        },
                      ),
                    );
                    //function
                  },
                ),
                ListTile(
                  title: Text(
                    'DEPARTMENTS',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return showDepartments();
                        },
                      ),
                    );
                    //function
                  },
                ),
                SizedBox(height: 10,),
              ],
            )
        ),
        body: SafeArea(

          child: MyHomePage(),

        ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: InteractiveViewer(
        minScale : 0.25,
        maxScale: 4,
        constrained: false,
        child:Image.asset('assets/images/DSCE-Map.jpg'),
      ),
    );
  }
}