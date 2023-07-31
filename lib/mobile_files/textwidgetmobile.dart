import 'package:flutter/material.dart';

class TextWidgetMobile extends StatelessWidget {
  final String textpath;
  final String textpath2;
  const TextWidgetMobile(
      {Key? key, required this.textpath, required this.textpath2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return SizedBox(
      // height: _mediaQuery.size.height * 0.2,
      width: _mediaQuery.size.width * 0.9,
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
                fontSize: 20.0),
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
