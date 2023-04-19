import 'dart:async';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../beat_sheet/beat_sheet.dart';
import '../profile_page/profile_page.dart';
import '../search_page/search_page.dart';

final _pagesGlobalKey = GlobalKey();

const pages = [
  SearchPage(),
  SizedBox.shrink(),
  ProfilePage(),
];

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        body: IndexedStack(
          key: _pagesGlobalKey,
          index: currentPageIndex,
          children: pages,
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            NavigationDestination(
              icon: const Icon(
                Icons.search,
              ),
              label: 'search_title'.tr(),
            ),
            BouncingGestureDetector(
              onTap: () {
                unawaited(BeatSheet.show(context));
              },
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
            NavigationDestination(
              icon: const Icon(
                Icons.person,
              ),
              label: 'profile_title'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
