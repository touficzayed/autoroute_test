import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app_router.dart';

@RoutePage()
class TabBScreen extends StatelessWidget {
  const TabBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("tab b")),
        body: Column(children: [
          const Text("tab b"),
          TextButton(
              onPressed: () => context.router.navigate(const OneRoute()),
              child: const Text("goto one"))
        ]));
  }
}
