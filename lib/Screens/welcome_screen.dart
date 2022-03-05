import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:womenopedia1/Widgets/button_tile2.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'Welcome Screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 250.0),
                child: Text(
                  "WELCOME",
                  style: TextStyle(fontSize: 48),
                )),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: ButtonTile2(
                onPress: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                text: 'LET\'S GO'),
          ),
        ],
      ),
    );
    ;
  }
}
