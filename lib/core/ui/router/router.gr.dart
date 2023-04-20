// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BeatListRoute.name: (routeData) {
      final args = routeData.argsAs<BeatListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BeatListPage(
          key: args.key,
          title: args.title,
          beatIds: args.beatIds,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };
}

/// generated route for
/// [BeatListPage]
class BeatListRoute extends PageRouteInfo<BeatListRouteArgs> {
  BeatListRoute({
    Key? key,
    required String title,
    required List<String> beatIds,
    List<PageRouteInfo>? children,
  }) : super(
          BeatListRoute.name,
          args: BeatListRouteArgs(
            key: key,
            title: title,
            beatIds: beatIds,
          ),
          initialChildren: children,
        );

  static const String name = 'BeatListRoute';

  static const PageInfo<BeatListRouteArgs> page =
      PageInfo<BeatListRouteArgs>(name);
}

class BeatListRouteArgs {
  const BeatListRouteArgs({
    this.key,
    required this.title,
    required this.beatIds,
  });

  final Key? key;

  final String title;

  final List<String> beatIds;

  @override
  String toString() {
    return 'BeatListRouteArgs{key: $key, title: $title, beatIds: $beatIds}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
