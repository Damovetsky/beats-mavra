import 'dart:async';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';

import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../beat_sheet/beat_sheet.dart';
import '../player_sheet/player_sheet.dart';
import '../profile_page/profile_page.dart';
import '../purchase_sheet/purchase_sheet.dart';
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

  SolidController bottomSheetController = SolidController();

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: _pagesGlobalKey,
        body: IndexedStack(
          index: currentPageIndex,
          children: pages,
        ),
        bottomSheet: PlayerSheet(controller: bottomSheetController),
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
                unawaited(BeatSheet.show(context, '055c2136-ac21-4938-b803-38681a9285c3'));
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
