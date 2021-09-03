import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        minScale : 0.1,
        maxScale: 7.0,
        constrained: false,
        child:Image.asset('assets/images/DSCE-Map.jpg'),
      ),
    );
  }
}