import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../../view/auth_page/auth_page.dart';
import '../../../view/home_page/home_page.dart';
import '../../../view/profile_page/beat_list_page/beat_list_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/'),
        AutoRoute(page: BeatListRoute.page, path: '/beat_list'),
      ];
}
