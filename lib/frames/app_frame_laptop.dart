import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppFrameLaptop extends StatelessWidget {
  final Widget child;
  final TabsRouter tabsRouter;
  const AppFrameLaptop(
      {super.key, required this.child, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
