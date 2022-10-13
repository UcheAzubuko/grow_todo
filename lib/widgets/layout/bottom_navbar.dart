import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../screens/notification.dart';
import '../../screens/profile_screen.dart';
import '../../screens/report.dart';

class BottomNavbar extends StatefulWidget {
  static const routeName = '/bottom-navbar';

  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final List<Widget> _screens = [
    HomeScreen(),
    const ReportScreen(),
    const ProfileScreen(),
    const NotificationScreen(),
  ];

  int _selectedScreenIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(65, 70, 194, 0.81),
        elevation: 0,
        title: null,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 15,
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.scaleDown,
                  width: double.infinity,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(child: _screens[_selectedScreenIndex]),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(57, 34, 152, 1),
          type: BottomNavigationBarType.fixed,
          onTap: _selectScreen,
          selectedItemColor: const Color.fromRGBO(121, 210, 249, 1),
          unselectedItemColor: Colors.white,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _selectedScreenIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.feed), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
          ]),
    );
  }
}
