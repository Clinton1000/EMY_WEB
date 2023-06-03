import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../logs/onboarding_screen.dart';
import '../privacy.dart';
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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: DrawerHeader(

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('images/logo1.png'),
              ),
            ),
          ),
          textButton("Products", 0),
          textButton("Resources", 1),
          textButton("Privacy", 2),
          textButton("FAQ", 3),
          textButton("Get Started", 4),
        ],
      ),
    );
  }
  Widget textButton(String textpath,int index){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5,vertical: 5),
      child: TextButton(onPressed: (){
        switch(index){
          case 2:
            context.goNamed(Privacy.id);
            break;
          case 4:
            context.goNamed(OnboardScreen.id);
        }
      }, child:  Text(
        textpath,
        softWrap: true,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'SpaceGrotesk',
            fontWeight: FontWeight.bold,
            fontSize: 19.0),
      ),),
    );
  }
}
