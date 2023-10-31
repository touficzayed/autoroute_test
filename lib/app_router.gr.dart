// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ATab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const A(),
      );
    },
    BTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const B(),
      );
    },
    MainFrameRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainFrameScreen(),
      );
    },
    OneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OneScreen(),
      );
    },
    TabARoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabAScreen(),
      );
    },
    TabBRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TabBScreen(),
      );
    },
    ThreeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThreeScreen(),
      );
    },
    TwoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TwoScreen(),
      );
    },
  };
}

/// generated route for
/// [A]
class ATab extends PageRouteInfo<void> {
  const ATab({List<PageRouteInfo>? children})
      : super(
          ATab.name,
          initialChildren: children,
        );

  static const String name = 'ATab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [B]
class BTab extends PageRouteInfo<void> {
  const BTab({List<PageRouteInfo>? children})
      : super(
          BTab.name,
          initialChildren: children,
        );

  static const String name = 'BTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainFrameScreen]
class MainFrameRoute extends PageRouteInfo<void> {
  const MainFrameRoute({List<PageRouteInfo>? children})
      : super(
          MainFrameRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainFrameRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OneScreen]
class OneRoute extends PageRouteInfo<void> {
  const OneRoute({List<PageRouteInfo>? children})
      : super(
          OneRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabAScreen]
class TabARoute extends PageRouteInfo<void> {
  const TabARoute({List<PageRouteInfo>? children})
      : super(
          TabARoute.name,
          initialChildren: children,
        );

  static const String name = 'TabARoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TabBScreen]
class TabBRoute extends PageRouteInfo<void> {
  const TabBRoute({List<PageRouteInfo>? children})
      : super(
          TabBRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabBRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ThreeScreen]
class ThreeRoute extends PageRouteInfo<void> {
  const ThreeRoute({List<PageRouteInfo>? children})
      : super(
          ThreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThreeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TwoScreen]
class TwoRoute extends PageRouteInfo<void> {
  const TwoRoute({List<PageRouteInfo>? children})
      : super(
          TwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
