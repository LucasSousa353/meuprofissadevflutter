import 'package:flutter/material.dart';
import 'package:meuprofissadev/pages/home.dart';
import 'package:meuprofissadev/pages/search.dart';
import 'package:meuprofissadev/pages/chat.dart';
import 'package:meuprofissadev/pages/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  List<Widget> screens = [
    const HomePage(),
    const SearchPage(),
    const ChatPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: screens[_currentIndex])),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black87,
        iconSize: 35,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Busca", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: "Chat",
              icon: Icon(Icons.chat_bubble_outline_rounded)),
          BottomNavigationBarItem(
              label: "Perfil", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
