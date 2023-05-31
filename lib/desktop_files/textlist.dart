import 'package:flutter/material.dart';

class TextList extends StatelessWidget {
  final String listtext;
  final Function()? onPressed;

  const TextList({
    Key? key,
    required this.listtext,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        listtext,
        style: const TextStyle(
            fontFamily: 'SpaceGrotesk',
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 13.0),
      ),
    );
  }
}
