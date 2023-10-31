import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_frame.dart';
import 'app_router.dart';

@RoutePage()
class MainFrameScreen extends StatelessWidget {
  const MainFrameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        TabARoute(),
        TabBRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return AppFrame(
          tabsRouter: tabsRouter,
          child: child,
        );
        // return child;
      },
    );
  }
}
