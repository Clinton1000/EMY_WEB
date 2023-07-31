import 'package:flutter/material.dart';

class TextList extends StatelessWidget {
  final String listText;
  final VoidCallback? onPressed;

   TextList({
    Key? key,
    required this.listText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        listText,
        style: const TextStyle(
            fontFamily: 'SpaceGrotesk',
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 13.0),
      ),
    );
  }
}
