// ignore_for_file: prefer_const_constructors

import 'package:change_collect_web/constant/dummy_data.dart';
import 'package:change_collect_web/constant/validation.dart';
import 'package:change_collect_web/routes/responsive_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/max_width_box.dart';

import 'forgot_password.dart';
import 'my_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'Login_Screen';
  final Function()? onTap;
  const LoginScreen({super.key, this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text editing controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey=GlobalKey<FormState>();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // sign user in method
  void signUserIn() async {
    if(_formKey.currentState!.validate()){
      try {
        showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
        UserCredential user =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        if (user.user?.uid != null) {
          context.pop();
          Future.delayed(Duration(milliseconds: 100),(){
            showDialog(
              context: context,
              builder: (context) {
                return MaxWidthBox(
                  maxWidth: 600,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: AlertDialog(
                    actionsPadding: EdgeInsets.all(5),
                      backgroundColor: Colors.black,
                      icon: Image.asset( 'images/think.png',scale: 2,height: 60,),
                      actions: [Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: (){
                              context.pop();
                            },
                            child: Icon(Icons.cancel,color: Colors.white,size: 32,)),
                      )],
                      title: Center(
                        child: Column(
                          children: [
                            Text(
                              "Congratulations",
                              style: const TextStyle(
                                  fontFamily: 'SpaceGrotesk', color: Colors.white),
                            ),
                            Text(
                              "Thank you for signing up, we will notify you once the app is launched ",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'SpaceGrotesk', color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          });

        }
        //pop the loading circle
      } on FirebaseAuthException catch (e) {
        debugPrint(e.toString());
        // pop the loading circle
        context.pop();
        // show error message
        //showErrorMessage(e.code);
        if (e.code == 'user-not-found') {
          wrongEmailMessage();
        } else if (e.code == 'wrong-password') {
          wrongPasswordMessage();
        }
      }
    }
    //show loading circle


    // try sign in

  }

  // error message to user
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Incorrect Email',
              style: const TextStyle(
                  fontFamily: 'SpaceGrotesk', color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: const TextStyle(
                  fontFamily: 'SpaceGrotesk', color: Colors.white),
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
        child: Center(
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
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
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
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                            )
                          ]),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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

                              const SizedBox(height: 25.0),
                              Text(
                                "welcome back you've been missed!",
                                style: TextStyle(
                                  fontFamily: 'SpaceGrotesk',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              // welcome back, you've been missed!

                              const SizedBox(height: 25),

                              // email textfield
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.0),
                                child: TextFormField(
                                  style: TextStyle(color: Colors.black),
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  validator: FieldValidator.validateEmail,
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                    ),
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                    hintText: 'Enter Your Email',
                                    hintStyle: TextStyle(
                                        fontFamily: 'SpaceGrotesk',
                                        color: Colors.grey[500]),
                                  ),
                                  obscureText: false,
                                ),
                              ),

                              const SizedBox(height: 10),

                              // password textfield
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.0),
                                child: TextFormField(
                                  validator: FieldValidator.validatePasswordSignup,
                                  style: TextStyle(
                                      fontFamily: 'SpaceGrotesk',
                                      color: Colors.black),
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0))),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade400),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0))),
                                      fillColor: Colors.grey.shade200,
                                      filled: true,
                                      hintText: 'Enter Your Password',
                                      hintStyle: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          color: Colors.grey[500])),
                                  obscureText: true,
                                ),
                              ),

                              const SizedBox(height: 10),

                              // forgot password?
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, ForgotPassword.id);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                            fontFamily: 'SpaceGrotesk',
                                            color: Colors.grey[600]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(height: 25),

                              // sign in button
                              MyButton(
                                text: "Sign In",
                                onTap: signUserIn,
                              ),

                              const SizedBox(height: 50),

                              // or continue with
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        thickness: 0.5,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'Or',
                                        style: TextStyle(color: Colors.grey[700]),
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
//

                              const SizedBox(height: 20),

                              // google + apple sign in buttons is supposed to be here

                              const SizedBox(height: 7),

                              // not a member? register now
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Not a member?',
                                    style: TextStyle(
                                        fontFamily: 'SpaceGrotesk',
                                        color: Colors.grey[700]),
                                  ),
                                  const SizedBox(width: 4),
                                  GestureDetector(
                                    onTap: widget.onTap,
                                    child: const Text(
                                      'Register now',
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
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //MEDIUM SCREEN
            mediumScreen: Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                    )
                  ]),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,autovalidateMode: AutovalidateMode.onUserInteraction,

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

                      const SizedBox(height: 25.0),

                      // welcome back, you've been missed!
                      Text(
                        "welcome back you've been missed!",
                        style: TextStyle(
                          fontFamily: 'SpaceGrotesk',
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 25),

                      // email textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          validator: FieldValidator.validateEmail,
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
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
                                fontFamily: 'SpaceGrotesk',
                                color: Colors.grey[500]),
                          ),
                          obscureText: false,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // password textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          controller: _passwordController,
                          validator: FieldValidator.validatePasswordSignup,
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                  fontFamily: 'SpaceGrotesk',
                                  color: Colors.grey[500])),
                          obscureText: true,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // forgot password?
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, ForgotPassword.id);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      // sign in button
                      MyButton(
                        text: "Sign In",
                        onTap: signUserIn,
                      ),

                      const SizedBox(height: 50),

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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Or',
                                style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: Colors.grey[700]),
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
//

                      const SizedBox(height: 20),

                      // google + apple sign in buttons is supposed to be here

                      const SizedBox(height: 7),

                      // not a member? register now
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a member?',
                            style: TextStyle(
                                fontFamily: 'SpaceGrotesk',
                                color: Colors.grey[700]),
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: const Text(
                              'Register now',
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
                ),
              ),
            ),
            //SMALL SCREEN
            smallScreen: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                    )
                  ]),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,

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

                      const SizedBox(height: 25.0),

                      // welcome back, you've been missed!
                      Text(
                        "welcome back you've been missed!",
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
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          validator: FieldValidator.validateEmail,
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
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
                                fontFamily: 'SpaceGrotesk',
                                color: Colors.grey[500]),
                          ),
                          obscureText: false,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // password textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: TextFormField(
                          validator: FieldValidator.validatePasswordSignup,
                          style: TextStyle(color: Colors.black),
                          controller: _passwordController,
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(
                                  fontFamily: 'SpaceGrotesk',
                                  color: Colors.grey[500])),
                          obscureText: true,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // forgot password?
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, ForgotPassword.id);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      // sign in button
                      MyButton(
                        text: "Sign In",
                        onTap: signUserIn,
                      ),

                      const SizedBox(height: 50),

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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Or',
                                style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: Colors.grey[700]),
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
//

                      const SizedBox(height: 20),

                      // google + apple sign in buttons is supposed to be here

                      const SizedBox(height: 7),

                      // not a member? register now
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a member?',
                            style: TextStyle(
                                fontFamily: 'SpaceGrotesk',
                                color: Colors.grey[700]),
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: const Text(
                              'Register now',
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
