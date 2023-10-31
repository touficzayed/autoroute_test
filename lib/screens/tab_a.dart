import 'package:auto_route/auto_route.dart';
import 'package:autoroute_test/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabAScreen extends StatelessWidget {
  const TabAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("tab a")),
        body: Column(children: [
          const Text("tab a"),
          TextButton(
              onPressed: () => context.router.navigate(const OneRoute()),
              child: const Text("goto one"))
        ]));
  }
}
