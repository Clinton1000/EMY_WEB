import 'package:flutter/material.dart';

import 'text_widget_drawer.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/logo1.png'),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              onTap: () {},
              leading: const TextWidgetDrawer(
                textpath: 'Products',
                textpath2: '',
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              onTap: () {},
              leading: const TextWidgetDrawer(
                textpath: 'Resources',
                textpath2: '',
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              onTap: () {},
              leading: const TextWidgetDrawer(
                textpath: 'Privacy',
                textpath2: '',
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              onTap: () {},
              leading: const TextWidgetDrawer(
                textpath: 'FAQ',
                textpath2: '',
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              onTap: () {},
              leading: const TextWidgetDrawer(
                textpath: 'Get Started',
                textpath2: '',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
