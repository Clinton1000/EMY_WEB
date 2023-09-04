import 'package:change_collect_web/desktop_files/textlist.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../alm_kyc.dart';
import '../logs/onboarding_screen.dart';
import '../privacy.dart';
import '../term_use.dart';
import 'my_drawer.dart';
import 'my_widget_mobile.dart';
import 'textwidgetmobile.dart';

class Mobile extends StatefulWidget {
  static const String id = 'mobile';

  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  final _emailController = TextEditingController();
  var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
  var pricebuttonpapdding = MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 50, vertical: 25));
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100.0),
                  padding: const EdgeInsets.all(10.0),
                  // height: _mediaQuery.size.height * 0.5,
                  width: _mediaQuery.size.width * 0.4,
                  child: Image.asset('images/landing_page.jpg'),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  // height: _mediaQuery.size.height * 0.3,
                  width: _mediaQuery.size.width * 0.7,
                  child: Column(
                    children: [
                      const Text(
                        'Changecollect Mobile',
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SpaceGrotesk',
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        // height: _mediaQuery.size.height * 0.2,
                        width: _mediaQuery.size.width * 0.9,
                        child: const Text(
                          'Collect and give change as you transact with cash! Our mobile app gives you the ability to instantly turn your physical cash to a digital currency',
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'SpaceGrotesk',
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  // height: _mediaQuery.size.height * 0.2,
                  width: _mediaQuery.size.width * 0.9,
                  child: const Text(
                    'Easy-to-Use Features',
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  // height: _mediaQuery.size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Collect and give change in any fiat or crypto currency of your choice,convert fiat or crypto currencies and make your utility bill payments.',
                    overflow: TextOverflow.visible,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onHover: (value) {
                    if (value) {
                      setState(() {
                        pricebuttonpapdding = MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5));
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
                          fontSize: 20)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Column(
                  children: [
                    MyWidgetMobile(imagepath: 'images/home.jpeg'),
                    TextWidgetMobile(
                      textpath: 'Homepage',
                      textpath2:
                          'The Changecollect Mobile Homepage provides you with a snapshot of your account and includes most reccent.',
                    ),
                    MyWidgetMobile(imagepath: 'images/collect.png'),
                    TextWidgetMobile(
                      textpath: 'Collect change',
                      textpath2:
                          'Collect your change with your phone number or by simply generating a qr code and showing it to the change giver.',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyWidgetMobile(imagepath: 'images/give.png'),
                const TextWidgetMobile(
                  textpath: 'Give change',
                  textpath2:
                      'Give anyone change through their phone number or by simply scanning the qr code they show you on their app.',
                ),
                const MyWidgetMobile(imagepath: 'images/market.png'),
                const TextWidgetMobile(
                  textpath: 'Market',
                  textpath2:
                      'Enable Crypto transactions such as,Crypto to crypto conversion,Crypto to fiat conversion,Fiat to crypto conversion.',
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  // height: 100.0,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        'The first of its Kind, instantly turns physical cash into digital currencies ',
                        style: TextStyle(
                          fontFamily: 'SpaceGrotesk',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
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
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          // height: 50,
                          width: _mediaQuery.size.width * 0.9,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SpaceGrotesk'),
                              controller: _emailController,
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
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
                                    fontSize: 15.0),
                              ),
                              obscureText: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
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
                Wrap(
                  alignment: WrapAlignment.start,
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
                  height: 30.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: _mediaQuery.size.height * 0.04,
                      width: _mediaQuery.size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
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
                Row(
                  children: [
                    SizedBox(
                      height: _mediaQuery.size.height * 0.1,
                      width: _mediaQuery.size.width * 0.9,
                      child: ListTile(
                        leading: Image.asset(
                          'images/copyright.png',
                          scale: 5,
                          height: 20,
                        ),
                        minLeadingWidth: 10,
                        title: const Text(
                          '2023 Changecollect. All rights reserved.',
                          style: TextStyle(
                              fontFamily: 'SpaceGrotesk', fontSize: 12.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
