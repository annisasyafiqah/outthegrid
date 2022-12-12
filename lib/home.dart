import 'package:NewsApp/pages/card_profile.dart';
import 'package:NewsApp/pages/home_screen.dart';
import 'package:NewsApp/pages/news_main.dart';
import 'package:NewsApp/pages/news_sports.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  final screens = [HomeScreen(), Sports(), CardProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ('Discovery'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Account'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
