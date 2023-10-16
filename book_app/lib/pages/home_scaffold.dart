import 'package:book_app/pages/home.dart';
import 'package:book_app/pages/profile.dart';
import 'package:flutter/material.dart';

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});

  @override
  State<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  int _selectedIndex = 0;
  bool _isSearching = false;

  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
              });
            },
          )
        ],
        centerTitle: true,
        title: AnimatedOpacity(
          opacity: _isSearching ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 200),
          child: _isSearching
              ? const TextField(
                  decoration: InputDecoration(
                    hintText: "Search something...",
                  ),
                )
              : const Text(
                  "",
                ),
        ),
        // AnimatedCrossFade(
        //     opacity: _isSearching ? 1.0 : 0.0,
        //     duration: const Duration(milliseconds: 200),
        //     firstChild: const Text(""),
        //     secondChild: const TextField(
        //       decoration: InputDecoration(
        //         hintText: "Search something...",
        //       ),
        //     ),
        //     crossFadeState: _isSearching
        //         \? CrossFadeState.showSecond
        //         : CrossFadeState.showFirst),
        backgroundColor: Colors.white,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
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
