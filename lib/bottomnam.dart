/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets, which means it defaults to [BottomNavigationBarType.fixed], and
// the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].

import 'package:flutter/material.dart';
import './homeview.dart';
import './profileview.dart';
import './pdocastsview.dart';
import './favoritesview.dart';
import 'Podcast.dart';
import 'recCard.dart';






/// This is the stateful widget that the main application instantiates.
class BottomNav extends StatefulWidget {


  @override
  State<BottomNav> createState() => _BottomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavState extends State<BottomNav> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Favorites(),
    //Podcasts(),
    Profile(),



  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home,
                color: Colors.grey,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home,
            ),

            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.thumb_up,
                color: Colors.grey,
            ),
            label: 'Favorites',
            activeIcon: Icon(
              Icons.thumb_up,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.disc_full_rounded,
                color: Colors.grey,
            ),
            label: 'Podcasts',
            activeIcon: Icon(
              Icons.disc_full_rounded,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.person,
                color: Colors.grey,
            ),
            label: 'Profile',
            activeIcon: Icon(
              Icons.person,
            ),
            backgroundColor: Colors.white,
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[800],
        onTap: _onItemTapped,
      ),
    );
  }
}