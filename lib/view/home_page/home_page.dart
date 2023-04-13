import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import '../../core/ui/color_schemes.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../profile_page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentPageIndex,
          children: [
            Container(),
            Container(),
            const ProfilePage(),
          ],
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
                  color: currentColorScheme(context).secondaryContainer,
                ),
                child: const Icon(
                  Icons.add,
                  size: 32,
                ),
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
      ),
    );
  }
}
