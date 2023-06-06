import 'package:change_collect_web/routes/general_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';


Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
        options:const FirebaseOptions(
            apiKey: "AIzaSyDbwQgDFhQFGZ6RioS77j4Xd1yACJY9wp0",
            authDomain: "changecollect-web.firebaseapp.com",
            projectId: "changecollect-web",
            storageBucket: "changecollect-web.appspot.com",
            messagingSenderId: "1021849246852",
            appId: "1:1021849246852:web:3146e20ae8482d462276d1",
            measurementId: "G-4818V0X9YW"
        ));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: ThemeData(),
      builder: (context, child) {
        child= ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        );
        return child;
      },
      debugShowCheckedModeBanner: false,
      routeInformationParser: basicRoutes.routeInformationParser,
      routeInformationProvider: basicRoutes.routeInformationProvider,
      routerDelegate: basicRoutes.routerDelegate,

      // initialRoute: ResponsiveMain.id,
      // routes: {
      //   LoginScreen.id: (context) => const LoginScreen(),
      //   Desktop.id: (context) => const Desktop(),
      //   ResponsiveMain.id: (context) => const ResponsiveMain(),
      //   Privacy.id: (context) => const Privacy(),
      //   Mobile.id: (context) => const Mobile(),
      // },
    );
  }
}
