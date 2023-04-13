import 'package:flutter/material.dart';

import '../../core/ui/color_schemes.g.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
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
          BouncingGestureDetector(
            onTap: () {},
            child: Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: lightColorScheme.secondaryContainer,
              ),
              child: const Icon(Icons.add, size: 32,),
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
