import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  static const String id = 'ForgotPassword';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _forgotpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 400.0,
                    child: Image.asset('images/logo1.png'),
                  ),
                ),
                const SizedBox(
                  height: 48.0,
                ),
                const Center(
                  child: Text(
                    'Enter your email to receive a password reset link',
                    style: TextStyle(
                        fontFamily: 'SpaceGrotesk', color: Colors.black54),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  controller: _forgotpasswordController,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(
                          fontFamily: 'SpaceGrotesk', color: Colors.grey[500])),
                  obscureText: false,
                ),
                const SizedBox(height: 25),

                // sign in button
                MaterialButton(
                  shape: (RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )),
                  onPressed: () {},
                  color: Colors.black,
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//                 TextField(
//                   controller: forgotpasswordController,
//                   keyboardType: TextInputType.emailAddress,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.black),
//                   decoration: const InputDecoration(
//                     hintStyle: TextStyle(color: Colors.grey),
//                     hintText: 'Enter your email',
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Colors.blueAccent, width: 1.0),
//                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Colors.blueAccent, width: 2.0),
//                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15.0,
//                 ),
//                 MaterialButton(
//                   shape: (RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(32.0),
//                   )),
//                   onPressed: () {},
//                   color: Colors.blue,
//                   child: const Text('Reset Password'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
