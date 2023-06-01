
import 'package:change_collect_web/logs/registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';




class OnboardingScreen extends StatefulWidget {
  static const String id = 'Onboarding_Screen';
  const OnboardingScreen({super.key});
  // const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // initially show login page
  bool showLoginScreen = true;

  // toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(
        onTap: togglePages,
      );
    } else {
      return RegistrationScreen(
        onTap: togglePages,
      );
    }
  }


// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         initialRoute:
//             FirebaseAuth.instance.currentUser == null ? '/login' : '/profile',
//         routes: {
//           '/login': (context) {
//             return SignInScreen(actions: [
//               AuthStateChangeAction<SignedIn>((context, state) {
//                 if (!state.user!.emailVerified) {
//                   Navigator.pushNamed(context, '/verify-email');
//                 } else {
//                   Navigator.pushReplacementNamed(context, BottomNavBar.id);
//                 }
//               }),
//             ]);
//           },
//           '/profile': (context) => const BottomNavBar(),
//           '/verify-email': (context) => EmailVerificationScreen(
//                 actionCodeSettings: ActionCodeSettings(
//                     url: 'https://changecollect-7cced.firebaseapp.com'),
//                 actions: [
//                   EmailVerifiedAction(() {
//                     Navigator.pushReplacementNamed(context, BottomNavBar.id);
//                   }),
//                   AuthCancelledAction((context) {
//                     FirebaseUIAuth.signOut(context: context);
//                     Navigator.pushReplacementNamed(
//                         context, const SignInScreen() as String);
//                   }),
//                 ],
//               ),
//         });
//   }
//}

