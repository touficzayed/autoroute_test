import 'package:flutter/material.dart';

import 'app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var router = AppRouter();
  runApp(MaterialApp.router(
    routerConfig: router.config(),
  ));
}
