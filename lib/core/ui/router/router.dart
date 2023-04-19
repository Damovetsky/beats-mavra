import 'package:auto_route/auto_route.dart';

import '../../../view/home_page/home_page.dart';


part 'router.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes =>
      [
        AutoRoute(page: HomeRoute.page, path: '/')
      ];
}