import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppFrameMobile extends StatelessWidget {
  final Widget child;
  final TabsRouter tabsRouter;
  const AppFrameMobile(
      {super.key, required this.child, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavBar(
        tabsRouter: tabsRouter,
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BottomNavBar({
    super.key,
    required this.tabsRouter,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      unselectedItemColor: Theme.of(context).disabledColor,
      currentIndex: tabsRouter.activeIndex ?? 0,
      onTap: (index) {
        // here we switch between tabs
        tabsRouter.setActiveIndex(index);
      },
      items: const [
        BottomNavigationBarItem(label: "A", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "B", icon: Icon(Icons.search)),
      ],
    );
  }
}
