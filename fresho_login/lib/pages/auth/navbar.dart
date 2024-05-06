import 'package:flutter/material.dart';
import 'package:fresho_login/pages/auth/home.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  static List<Widget> body = <Widget>[
    HomePage(),
    // Activity(),
    // Chat(),
    // Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 23,
            ),
            label: 'Home',
          ),
        
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              size: 23,
            ),
            label: 'Activitity',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 23,
            ),
            label: 'Chat',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 23,
            ),
            label: 'Profile',
          ),
        ],
        elevation: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff3F51B5),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Colors.amber,
        onTap: _onItemTapped,
        
      ),
    );
  }}