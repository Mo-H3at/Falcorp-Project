import 'package:flutter/material.dart';

import '../pages/main/home.dart';
import '../pages/main/library.dart';
import '../pages/main/profile.dart';
import '../pages/main/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

int _selectedIndex = 0;

static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Search(),
    Library(),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryFixed,
        title: const Text('Mo Tech'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          selectedItemColor: Color.fromARGB(255, 4, 136, 251),
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Icon(Icons.home, color: Color.fromARGB(255, 4, 136, 251)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              activeIcon: Icon(Icons.search, color: Color.fromARGB(255, 4, 136, 251)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Library',
              activeIcon: Icon(Icons.grid_view, color: Color.fromARGB(255, 4, 136, 251)),
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              activeIcon: Icon(Icons.person, color: Color.fromARGB(255, 4, 136, 251)),
            ),
          ],
        ),
    );
  }
}