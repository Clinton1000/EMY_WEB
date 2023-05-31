import 'package:flutter/material.dart';

class MyWidgetMobile extends StatelessWidget {
  final String imagepath;

  const MyWidgetMobile({Key? key, required this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100.0),
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: _mediaQuery.size.height * 0.45,
      width: _mediaQuery.size.width * 0.9,
      child: Image.asset(imagepath),
    );
  }
}
