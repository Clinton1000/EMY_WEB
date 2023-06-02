import 'package:change_collect_web/logs/registration_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardScreen extends StatefulWidget {
  static const String id = 'OnboardScreen';
  const OnboardScreen({super.key});
  // const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
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

}