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
        backgroundColor: Color(0xff211F26),
        title: const Text(
          'Beats',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xff211F26),
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
                color: Colors.white
            ),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 45,
            ),
            label: 'Add Track',
          ),
          NavigationDestination(
            icon: Icon(
                Icons.person,
                color: Colors.white
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
