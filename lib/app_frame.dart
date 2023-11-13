import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'frames/avatar_drawer.dart';

class AppFrame extends StatelessWidget {
  final Widget child;
  const AppFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(title: Text(tabsRouter.current.title(context))),
      // endDrawer: const AvatarDrawer(),
      body: (size.width > 1200)
          ? Row(
              children: [
                NavigationRail(
                  extended: true,
                  destinations: const [
                    NavigationRailDestination(
                        icon: Icon(Icons.home), label: Text("A")),
                    NavigationRailDestination(
                        label: Text("B"), icon: Icon(Icons.search)),
                  ],
                  selectedIndex: AutoTabsRouter.of(context).activeIndex ?? 0,
                  onDestinationSelected:
                      AutoTabsRouter.of(context).setActiveIndex,
                ),
                Expanded(child: child),
                const VerticalDivider(width: 1),
                const SizedBox(
                  width: 250,
                  child: AvatarDrawer(),
                )
              ],
            )
          : (size.width > 768)
              ? Row(
                  children: [
                    NavigationRail(
                      extended: true,
                      destinations: const [
                        NavigationRailDestination(
                            icon: Icon(Icons.home), label: Text("A")),
                        NavigationRailDestination(
                            label: Text("B"), icon: Icon(Icons.search)),
                      ],
                      selectedIndex:
                          AutoTabsRouter.of(context).activeIndex ?? 0,
                      onDestinationSelected:
                          AutoTabsRouter.of(context).setActiveIndex,
                    ),
                    Expanded(child: child),
                  ],
                )
              : (size.width > 425)
                  ? Row(
                      children: [
                        NavigationRail(
                          extended: false,
                          destinations: const [
                            NavigationRailDestination(
                                icon: Icon(Icons.home), label: Text("A")),
                            NavigationRailDestination(
                                label: Text("B"), icon: Icon(Icons.search)),
                          ],
                          selectedIndex:
                              AutoTabsRouter.of(context).activeIndex ?? 0,
                          onDestinationSelected:
                              AutoTabsRouter.of(context).setActiveIndex,
                        ),
                        Expanded(child: child),
                      ],
                    )
                  : child,
      bottomNavigationBar: (size.width <= 425)
          ? BottomNavigationBar(
              showUnselectedLabels: false,
              selectedItemColor: Theme.of(context).colorScheme.secondary,
              unselectedItemColor: Theme.of(context).disabledColor,
              currentIndex: AutoTabsRouter.of(context).activeIndex ?? 0,
              onTap: (index) {
                // here we switch between tabs
                AutoTabsRouter.of(context).setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(label: "A", icon: Icon(Icons.home)),
                BottomNavigationBarItem(label: "B", icon: Icon(Icons.search)),
              ],
            )
          : null,
    );
  }
}
