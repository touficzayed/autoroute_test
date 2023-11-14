import 'package:auto_route/auto_route.dart';
import 'package:autoroute_test/frames/avatar_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class AppFrame extends StatelessWidget {
  final Widget child;
  final TabsRouter tabsRouter;
  const AppFrame({super.key, required this.child, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    final breakpoints = ResponsiveBreakpoints.of(context);
    return Scaffold(
      // appBar: AppBar(title: Text(tabsRouter.current.title(context))),
      // endDrawer: const AvatarDrawer(),
      body: Row(
        children: [
          NavigationRail(
            extended: breakpoints.isDesktop,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.home), label: Text("A")),
              NavigationRailDestination(
                  label: Text("B"), icon: Icon(Icons.search)),
            ],
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
          ),
          Expanded(child: child),
          if (breakpoints.largerOrEqualTo(DESKTOP))
            const Row(
              children: [
                VerticalDivider(width: 1),
                SizedBox(
                  width: 250,
                  child: AvatarDrawer(),
                )
              ],
            )
        ],
      ),
    );
  }
}
