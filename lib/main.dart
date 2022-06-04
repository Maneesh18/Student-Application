import 'package:flutter/material.dart';
import 'package:refer_me/pages/attendance.dart';
import 'package:refer_me/pages/home.dart';
import 'package:refer_me/pages/profile.dart';
import 'package:refer_me/pages/results.dart';

void main() {
  runApp(MaterialApp(
    home: MainTemplate(),
  ));
}

class MainTemplate extends StatefulWidget {
  const MainTemplate({Key? key}) : super(key: key);

  @override
  State<MainTemplate> createState() => _MainTemplateState();
}

class _MainTemplateState extends State<MainTemplate> {
  int current_index = 0;
  final List screens=[
    Home(),
    Attendance(),
    Result(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[current_index],
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white70,
        currentIndex: current_index,
        backgroundColor: Colors.grey[800],
        showUnselectedLabels: true,
        onTap: (index)=> setState(() => current_index=index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Results',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
