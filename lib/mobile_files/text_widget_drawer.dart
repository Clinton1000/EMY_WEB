import 'package:flutter/material.dart';

class TextWidgetDrawer extends StatelessWidget {
  final String textpath;
  final String textpath2;
  const TextWidgetDrawer(
      {Key? key, required this.textpath, required this.textpath2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: _mediaQuery.size.height * 0.4,
      width: _mediaQuery.size.width * 0.4,
      child: Column(
        children: [
          Text(
            textpath,
            softWrap: true,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontWeight: FontWeight.bold,
                fontSize: 19.0),
          ),
          Text(
            textpath2,
            softWrap: true,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontWeight: FontWeight.normal,
                fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
