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
      body: Placeholder(),
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
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
                Icons.search,
            ),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add,
              size: 45,
            ),
            label: 'Add Track',
          ),
          NavigationDestination(
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
