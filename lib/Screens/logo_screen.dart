import 'package:womenopedia1/Screens/login_screen.dart';

import '';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:womenopedia1/Widgets/button_tile2.dart';
import '../palette.dart';
// import 'home_screen.dart';

class LogoScreen extends StatefulWidget {
  static String id = 'Logo Screen';
  const LogoScreen({Key? key}) : super(key: key);

  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: Image(
              image: AssetImage(
                'images/logoprovisional.png',
              ),
              width: 350,
              height: 350,
            ),
          ),
          Column(
            children: [
              ButtonTile2(onPress: () {}, text: 'Sign-up'),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a Member?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
