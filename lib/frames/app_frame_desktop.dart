import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'avatar_drawer.dart';

class AppFrameDesktop extends StatelessWidget {
  final Widget child;
  final TabsRouter tabsRouter;
  const AppFrameDesktop(
      {super.key, required this.child, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(tabsRouter.current.title(context))),
      // endDrawer: const AvatarDrawer(),
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.home), label: Text("A")),
              NavigationRailDestination(
                  label: Text("B"), icon: Icon(Icons.search)),
            ],
            selectedIndex: tabsRouter.activeIndex ?? 0,
            onDestinationSelected: tabsRouter.setActiveIndex,
          ),
          Expanded(child: child),
          const VerticalDivider(width: 1),
          const SizedBox(
            width: 250,
            child: AvatarDrawer(),
          )
        ],
      ),
    );
  }
}
