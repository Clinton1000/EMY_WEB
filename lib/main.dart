import 'package:change_collect_web/logs/login_screen.dart';
import 'package:change_collect_web/privacy.dart';
import 'package:change_collect_web/responsive_layouts/responsive.dart';
import 'package:change_collect_web/responsive_layouts/responsive_main.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:change_collect_web/desktop_files/desktop.dart';
import 'package:url_strategy/url_strategy.dart';

import '../mobile_files/mobile.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        Desktop.id: (context) => const Desktop(),
        ResponsiveMain.id: (context) => const ResponsiveMain(),
        Privacy.id: (context) => const Privacy(),
        Mobile.id: (context) => const Mobile(),
      },
    );
  }
}
