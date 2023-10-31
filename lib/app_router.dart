import 'package:auto_route/auto_route.dart';

import 'main_frame_screen.dart';
import 'screens/screen_1.dart';
import 'screens/screen_2.dart';
import 'screens/screen_3.dart';
import 'screens/tab_a.dart';
import 'screens/tab_b.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: MainFrameRoute.page,
          maintainState: true,
          children: [
            RedirectRoute(path: '', redirectTo: 'a'),
            AutoRoute(
                path: 'a',
                page: ATab.page,
                maintainState: true,
                children: [
                  AutoRoute(page: TabARoute.page, initial: true),
                  AutoRoute(
                    page: OneRoute.page,
                    title: (context, data) => "One",
                    path: 'one',
                  ),
                  AutoRoute(
                      page: TwoRoute.page,
                      title: (context, data) => "Two",
                      path: 'two'),
                ]),
            AutoRoute(
                path: 'b',
                page: BTab.page,
                maintainState: true,
                children: [
                  AutoRoute(page: TabBRoute.page, initial: true),
                  AutoRoute(
                    page: OneRoute.page,
                    title: (context, data) => "One",
                    path: 'one',
                  ),
                  AutoRoute(
                      page: TwoRoute.page,
                      title: (context, data) => "Two",
                      path: 'two'),
                ]),
          ],
        ),

        // AutoRoute(path: '/login', page: LoginRoute.page)
      ];
}

@RoutePage(name: "ATab")
class A extends AutoRouter {
  const A({super.key});
}

@RoutePage(name: "BTab")
class B extends AutoRouter {
  const B({super.key});
}
