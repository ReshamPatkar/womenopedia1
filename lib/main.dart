import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:womenopedia1/Screens/DietRec.dart';
import 'package:womenopedia1/Screens/intro_carousel.dart';
import 'package:womenopedia1/Screens/logo_screen.dart';
import 'package:womenopedia1/Screens/medit_home_screen.dart';
import 'package:womenopedia1/Screens/meditation_screen.dart';
import 'package:womenopedia1/Screens/period_tracker_screen.dart';
import 'package:womenopedia1/Screens/signup_screen.dart';
import 'package:womenopedia1/Screens/welcome_screen.dart';
import 'package:womenopedia1/Screens/workout_screen.dart';

import 'Screens/home_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/splash_screen.dart';

// import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        SignUpScreen.id: (context) => SignUpScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        PredictPage.id: (context) =>PredictPage(),
        MeditHomeScreen.id: (context) =>MeditHomeScreen(),
        MeditationScreen.id: (context) => MeditationScreen(),
        MealDetailScreen.id: (context) => MealDetailScreen(),
        WorkoutScreen.id: (context) => WorkoutScreen(),
      },
    );
  }
}
