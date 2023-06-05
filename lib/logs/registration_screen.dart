// ignore_for_file: prefer_const_constructors

import 'package:change_collect_web/routes/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import '../constant/dummy_data.dart';
import 'my_button.dart';

class RegistrationScreen extends StatefulWidget {
  // static const String id = 'Registration_Screen';
  final Function()? onTap;
  const RegistrationScreen({super.key, required this.onTap});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // text editing controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    _cPasswordController.dispose();
    super.dispose();
  }

  // sign user up method
  void signUserUp() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try creating the user
    try {
      // check if password is confirmed
      if (_passwordController.text == _cPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
      } else {
        // show error message, passwords don't match
        showErrorMessage("Passwords don't match!");
      }
      // pop the loading circle
      context.pop();
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      context.pop();
      // show error message
      showErrorMessage(e.code);
    }
  }

  // error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
          child: ResponsiveWidget(
        largeScreen: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.05),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Flexible(
                      child: Image.asset('images/logo1.png'),
                    ),
                    Flexible(
                      child: Container(
                        // width: 350,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                " Fast and Secured",
                                style: const TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                DummyData.mediumText,
                                style: const TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20.0),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 5, child: rightSideScreen())
            ],
          ),
        ),
        smallScreen: rightSideScreen(),
        mediumScreen: rightSideScreen(),
      )),
    );
  }

  Widget rightSideScreen() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Hero(
            tag: 'logo',
            child: SizedBox(
              height: 150.0,
              child: Image.asset('images/logo1.png'),
            ),
          ),
          const SizedBox(height: 25),
          // let's create an account for you
          Text(
            'Let\'s create an account for you!',
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 25),
          // email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.emailAddress,
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Enter Your Email',
                  hintStyle: TextStyle(
                      fontFamily: 'SpaceGrotesk', color: Colors.grey[500])),
              obscureText: false,
            ),
          ),
          const SizedBox(height: 10),
          // password textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              controller: _passwordController,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(
                      fontFamily: 'SpaceGrotesk', color: Colors.grey[500])),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 10),
          // confirm password textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              controller: _cPasswordController,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                      fontFamily: 'SpaceGrotesk', color: Colors.grey[500])),
              obscureText: true,
            ),
          ),

          const SizedBox(height: 25),

          // sign in button
          MyButton(
            text: "Sign Up",
            onTap: signUserUp,
          ),

          const SizedBox(height: 30),

          // or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'If You',
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk', color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          const SizedBox(height: 20),

          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                    fontFamily: 'SpaceGrotesk', color: Colors.grey[700]),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: const Text(
                  'Login now',
                  style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    color: Color(0xff3964ff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
