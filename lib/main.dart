import 'package:flutter/material.dart';
import './bottomnam.dart';

void main() => runApp( MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Podcast Time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNav(),


    );


  }
}


