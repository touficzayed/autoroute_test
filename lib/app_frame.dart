import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'frames/app_frame_desktop.dart';
import 'frames/app_frame_laptop.dart';
import 'frames/app_frame_mobile.dart';
import 'frames/app_frame_tablet.dart';

class AppFrame extends StatelessWidget {
  final Widget child;
  final TabsRouter tabsRouter;
  const AppFrame({super.key, required this.child, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (size.width >= 1600) {
      // return const AppFrameUhd();
      //TODO:implements uhd frame
    }
    if (size.width >= 1200) {
      return AppFrameDesktop(
        tabsRouter: tabsRouter,
        child: child,
      );
    }
    if (size.width >= 720) {
      return AppFrameLaptop(tabsRouter: tabsRouter, child: child);
    }
    if (size.width >= 375) {
      return AppFrameTablet(tabsRouter: tabsRouter, child: child);
    }
    return AppFrameMobile(tabsRouter: tabsRouter, child: child);
  }
}
