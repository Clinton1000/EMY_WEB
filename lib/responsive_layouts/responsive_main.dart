import 'package:change_collect_web/desktop_files/desktop.dart';
import 'package:change_collect_web/mobile_files/mobile.dart';
import 'package:flutter/material.dart';

class ResponsiveMain extends StatefulWidget {
  static const String id = 'responsivemain';
  const ResponsiveMain({Key? key}) : super(key: key);

  @override
  State<ResponsiveMain> createState() => _ResponsiveMainState();
}

class _ResponsiveMainState extends State<ResponsiveMain> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 900) {
          return Desktop();
        } else if (constraints.maxWidth <= 650) {
          return Mobile();
        } else {
          return Mobile();
        }
      },
    );
  }
}
