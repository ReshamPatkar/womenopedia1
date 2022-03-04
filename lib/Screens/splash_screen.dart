import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'Welcome_screen.dart';
import '../palette.dart';
import 'intro_carousel.dart';
import 'login_screen.dart';
import 'logo_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'Splash_Screen';
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  // FirebaseAuth _auth = FirebaseAuth.instance;
  // bool userToggle;
  @override
  void initState() {
    super.initState();
    // getCurrentUser().then((value) {
    //   setState(() {
    //     userToggle = value;
    //   });
    // });
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            // MaterialPageRoute(
            //     builder: (context) =>
            //         userToggle ? HomeScreen() : WelcomeScreen())
            MaterialPageRoute(builder: (context) => IntroScreen())));
  }

  // Future<bool> getCurrentUser() async {
  //   bool value;
  //   try {
  //     final user = await _auth.currentUser;
  //     if (user != null) {
  //       value = true;
  //     } else {
  //       value = false;
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  //   return value;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(
                'images/logoprovisional.png',
              ),
              width: 250,
              height: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SpinKitWave(
              color: kPrimaryColor,
              size: 50,
            ),
          )
        ],
      ),
    );
  }
}
