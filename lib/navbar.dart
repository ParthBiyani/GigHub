import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:git_hub/chat_page/ui.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  List<Widget> pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      backgroundColor: const Color.fromRGBO(30, 27, 24, 1),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: const Color.fromRGBO(30, 27, 24, 1),
        buttonBackgroundColor: const Color.fromRGBO(30, 27, 24, 1),
        color: const Color.fromRGBO(62, 146, 204, 1),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.assist_walker,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
