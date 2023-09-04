import 'package:change_collect_web/alm_kyc.dart';
import 'package:change_collect_web/desktop_files/my_widgets.dart';
import 'package:change_collect_web/desktop_files/textlist.dart';
import 'package:change_collect_web/desktop_files/textwidget.dart';
import 'package:change_collect_web/logs/onboarding_screen.dart';
import 'package:change_collect_web/privacy.dart';
import 'package:change_collect_web/term_use.dart';
import 'package:flutter/material.dart';
import 'package:change_collect_web/desktop_files/my_custom_appbar.dart';
import 'package:go_router/go_router.dart';

class Desktop extends StatefulWidget {
  static const String id = 'desktop';
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  final _emailController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    super.dispose();
  }

  var pricebuttonpapdding = MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 50, vertical: 25));
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // MediaQuery.of(context).size.width > 720
            const MyCustomAppbar(),

            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: _mediaQuery.size.height * 0.8,
                  width: _mediaQuery.size.width * 0.4,
                  child: const Column(
                    children: [
                      Text(
                        'Changecollect Mobile',
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SpaceGrotesk',
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                      Text(
                        'Collect and give change as you transact with cash! Our mobile app gives you the ability to instantly turn your physical cash to a digital currency',
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'SpaceGrotesk',
                            fontWeight: FontWeight.normal,
                            fontSize: 25.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100.0),
                  padding: const EdgeInsets.all(10.0),
                  height: _mediaQuery.size.height * 0.8,
                  width: _mediaQuery.size.width * 0.24,
                  child: Image.asset('images/landing_page.jpg'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Easy-to-Use Features',
              softWrap: true,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'SpaceGrotesk',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Text(
                'Collect and give change in any fiat or crypto currency of your choice,convert fiat or crypto currencies and make your utility bill payments.',
                overflow: TextOverflow.visible,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    fontSize: 25,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onHover: (value) {
                if (value) {
                  setState(() {
                    pricebuttonpapdding = MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 30));
                  });
                } else {
                  setState(() {
                    pricebuttonpapdding = MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 25));
                  });
                }
              },
              style: ButtonStyle(
                padding: pricebuttonpapdding,
                overlayColor: MaterialStateProperty.all(
                  Colors.black.withOpacity(0.8),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.black.withOpacity(0.7),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () {
                context.goNamed(OnboardScreen.id);
              },
              child: const Text('Get Started',
                  style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyWidget(imagepath: 'images/home.jpeg'),
                MyWidget(imagepath: 'images/collect.png'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextWidget(
                  textpath: 'Homepage',
                  textpath2:
                      'The Changecollect Mobile Homepage provides you with a snapshot of your account and includes most reccent.',
                ),
                TextWidget(
                  textpath: 'Collect change',
                  textpath2:
                      'Collect your change with your phone number or by simply generating a qr code and showing it to the change giver.',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyWidget(imagepath: 'images/give.png'),
                MyWidget(imagepath: 'images/market.png'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextWidget(
                  textpath: 'Give change',
                  textpath2:
                      'Give anyone change through their phone number or by simply scanning the qr code they show you on their app.',
                ),
                TextWidget(
                  textpath: 'Market',
                  textpath2:
                      'Enable Crypto transactions such as,Crypto to crypto conversion,Crypto to fiat conversion,Fiat to crypto conversion.',
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: const BoxDecoration(color: Colors.black),
              child: const Center(
                child: Text(
                  'The first of its Kind, instantly turns physical cash into digital currencies ',
                  style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Stay up to date',
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: _mediaQuery.size.width * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                          color: Colors.black, fontFamily: 'SpaceGrotesk'),
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter your email',
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'SpaceGrotesk',
                            fontSize: 18.0),
                      ),
                      obscureText: false,
                    ),
                  ),
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text(
                    'Subscribe',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'images/linkedin.png',
                        ),
                        Image.asset('images/twitter.png'),
                        Image.asset('images/instagram.png'),
                        Image.asset('images/facebook.png'),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),

            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Products',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'SpaceGrotesk',
                          fontSize: 13.0),
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'Collect Change',
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'Give Change',
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'Exchange Fiat',
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'Exchange Crypto',
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Company',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'SpaceGrotesk',
                          fontSize: 13.0),
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'About',
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'FAQs',
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'Blog',
                    ),
                    TextList(
                      onPressed: null,
                      listText: 'Contact Us',
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Legal',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'SpaceGrotesk',
                          fontSize: 13.0),
                    ),
                    TextList(
                      onPressed: () {
                        context.goNamed(Privacy.id);
                      },
                      listText: 'Privacy Policy',
                    ),
                    TextList(
                      onPressed: () {
                        context.goNamed(TermOfUse.id);
                      },
                      listText: 'Terms Of Use',
                    ),
                    TextList(
                      onPressed: () {
                        context.goNamed(AlmView.rout);
                      },
                      listText: 'AML & KYC Policy',
                    ),
                    const TextList(
                      onPressed: null,
                      listText: 'As featured',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 200.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: _mediaQuery.size.height * 0.1,
                  width: _mediaQuery.size.width * 0.23,
                  child: ListTile(
                    minLeadingWidth: 10,
                    leading: Image.asset(
                      'images/copyright.png',
                      height: 25,
                    ),
                    title: const Text(
                      '2023 Changecollect. All rights reserved.',
                      style:
                          TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 13.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.06,
                  width: _mediaQuery.size.width * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('images/appstore.png'),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Image.asset('images/playstore.png'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
