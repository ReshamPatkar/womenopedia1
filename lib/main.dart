import 'package:flutter/material.dart';
import 'package:womenopedia1/Screens/intro_carousel.dart';
import 'package:womenopedia1/Screens/logo_screen.dart';

import 'Screens/login_screen.dart';
import 'Screens/splash_screen.dart';

// import 'package:firebase_core/firebase_core.dart';
void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        LogoScreen.id: (context) => LogoScreen(),
        IntroScreen.id: (context) => IntroScreen(),
      },
    );
  }
}
