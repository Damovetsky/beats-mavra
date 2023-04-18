import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../data/repository/auth_repository_impl.dart';
import '../../data/service/auth_service/auth_service.dart';
import '../../data/service/users_service/users_service.dart';
import '../profile_page/profile_page.dart';

final _pagesGlobalKey = GlobalKey();

const pages = [
  SizedBox(),
  SizedBox(),
  ProfilePage(),
];

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
        body: GestureDetector(
          onTap: () async {
            // print(AuthRepositoryImpl(getIt.get<AuthService>()).getUserID());
            await AuthRepositoryImpl(getIt.get<AuthService>(), getIt.get<UserService>()).signUp(email: 'me7@example.com', password: 'mnsjbhrfeuosydfbekrbgguyeBWE', nickname: 'Me5');
            // await AuthRepositoryImpl(getIt.get<AuthService>()).signInWithGoogle();
            // await AuthRepositoryImpl(getIt.get<AuthService>()).signUp(nickname: 'A', email: 'me@example.com', password: 'mnsjbhrfeuihinkrgsbggeBWE');
            // print(AuthRepositoryImpl(getIt.get<AuthService>()).getUserID());
          },
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
