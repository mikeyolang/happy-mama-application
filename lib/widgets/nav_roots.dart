import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_mama/screens/homescreen.dart';

import '../screens/community_screen.dart';
import '../screens/messages_screen.dart';
import '../screens/schedule_screen.dart';
import '../screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectIndex = 0;
  final _screens = [
    //Home Screen
    HomeScreen(),
    //  Messages Screen
    const MessagesScreen(),
    //  Schedule Screen
    const ScheduleScreen(),
    //  Settings screen
    const SettingsScreen(),
    const CommunityForumUI(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectIndex,
          onTap: (index) {
            setState(() {
              _selectIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            // BottomNavigationBarItem(Icon(Icons.people), label: "Community")
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: "Community")
          ],
        ),
      ),
    );
  }
}
