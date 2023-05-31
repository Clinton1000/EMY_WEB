import 'package:flutter/material.dart';

import '../privacy.dart';

class MyCustomAppbar extends StatefulWidget {
  const MyCustomAppbar({Key? key}) : super(key: key);

  @override
  State<MyCustomAppbar> createState() => _MyCustomAppbarState();
}

class _MyCustomAppbarState extends State<MyCustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Image(
              image: AssetImage('images/logo4.png'),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Products',
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resources',
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Privacy.id);
                  },
                  child: const Text(
                    'Privacy',
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'FAQ',
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Colors.grey.withOpacity(0.8)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: const Text('Get Started',
                      style: TextStyle(
                          fontFamily: 'SpaceGrotesk',
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//border: Border.all(color: Colors.black, width: 2),
//borderRadius: BorderRadius.circular(5.0))
//margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//padding: EdgeInsets.symmetric(horizontal: 30),
