import 'package:flutter/material.dart';
import 'home_page.dart';
import 'shorts_page.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ShortsPage(),
    const Center(child: Text('Créer (+)')),
    const Center(child: Text('Abonnements')),
    const Center(child: Text('Vous')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF0F0F0F),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow), label: 'Shorts'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline, size: 36), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined), label: 'Abonnements'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Vous'),
        ],
      ),
    );
  }
}
