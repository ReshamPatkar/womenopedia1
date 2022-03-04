import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:womenopedia1/Widgets/button_tile.dart';
import 'package:womenopedia1/Widgets/button_tile2.dart';

import '../palette.dart';

class SignUpScreen extends StatefulWidget {
  static String id = 'Sign Up Screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String firstName;
  late String lastName;
  late String email;
  late String password1;
  late String password2;
  bool passwordBool = true;
  @override
  void initState() {
    // TODO: implement initState
    passwordBool = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 32.0,
            top: 16.0,
            bottom: 16.0,
          ),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kDividerColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image(
                      image: AssetImage(
                        'images/logoprovisional.png',
                      ),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'WOMEN-O-PEDIA',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kDividerColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Center(
                      child: Text(
                        'Sign-up',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        firstName = value;
                      },
                      cursorColor: kPrimaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'First Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        firstName = value;
                      },
                      cursorColor: kPrimaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Last Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        email = value;
                      },
                      cursorColor: kPrimaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Email Address',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      onChanged: (value) {
                        password1 = value;
                      },
                      obscureText: passwordBool,
                      cursorColor: kPrimaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Password',
                        suffixIcon: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              passwordBool = passwordBool ? false : true;
                            });
                          },
                          icon: passwordBool
                              ? Icon(
                                  CupertinoIcons.eye_slash_fill,
                                  size: 16,
                                  color: kPrimaryColor,
                                )
                              : Icon(
                                  CupertinoIcons.eye_fill,
                                  size: 16,
                                  color: kPrimaryColor,
                                ),
                          label: SizedBox(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      onChanged: (value) {
                        password2 = value;
                      },
                      obscureText: passwordBool,
                      cursorColor: kPrimaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Confirm Password',
                        suffixIcon: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              passwordBool = passwordBool ? false : true;
                            });
                          },
                          icon: passwordBool
                              ? Icon(
                                  CupertinoIcons.eye_slash_fill,
                                  size: 16,
                                  color: kPrimaryColor,
                                )
                              : Icon(
                                  CupertinoIcons.eye_fill,
                                  size: 16,
                                  color: kPrimaryColor,
                                ),
                          label: SizedBox(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ButtonTile(
                      onPress: () {},
                      text: 'Register',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            color: kDividerColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ButtonTile2(
            onPress: () {},
            text: 'Continue With Google',
          ),
        )
      ],
    )));
  }
}
