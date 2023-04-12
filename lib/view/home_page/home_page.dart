import 'package:flutter/material.dart';

import '../../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Placeholder(),
      appBar: AppBar(
        title: const Text(
          'Beats',
          style: TextStyle(
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          const NavigationDestination(
            icon: Icon(
                Icons.search,
            ),
            label: 'Search',
          ),
          GestureDetector(
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add),
            ),
          ),
          const NavigationDestination(
            icon: Icon(
                Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
