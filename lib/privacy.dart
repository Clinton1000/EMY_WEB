import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Privacy extends StatefulWidget {
  static const String id = 'privacy';
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Privacy Policy",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Text(
                "words �Changecollect,� �we,� �us,� or �our� refer to any or all"),
          ),
        ],
      ),
    );
  }
}
