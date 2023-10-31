import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app_router.dart';

@RoutePage()
class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("screen 1")),
      body: Column(children: [
        const Text("screen 1"),
        TextButton(
            onPressed: () => context.router.navigate(const TwoRoute()),
            child: const Text("goto two"))
      ]),
    );
  }
}
