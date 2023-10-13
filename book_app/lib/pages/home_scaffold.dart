import 'package:book_app/pages/home.dart';
import 'package:flutter/material.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});

  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 1
                  ? Icons.account_circle
                  : Icons.account_circle_outlined),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2
                  ? Icons.settings
                  : Icons.settings_outlined),
              label: ""),
        ],
      ),
    );
  }
}
