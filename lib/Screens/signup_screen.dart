import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:womenopedia1/Widgets/button_tile.dart';
import 'package:womenopedia1/Widgets/button_tile2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../palette.dart';
import 'login_screen.dart';

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
  bool passwordBool1 = true;
  bool passwordBool2 = true;
  @override
  void initState() {
    // TODO: implement initState
    passwordBool1 = true;
    passwordBool2 = true;
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
                        lastName = value;
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
                      obscureText: passwordBool1,
                      cursorColor: kPrimaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Password',
                        suffixIcon: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              passwordBool1 = passwordBool1 ? false : true;
                            });
                          },
                          icon: passwordBool1
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
                      obscureText: passwordBool2,
                      cursorColor: kPrimaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Confirm Password',
                        suffixIcon: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              passwordBool2 = passwordBool2 ? false : true;
                            });
                          },
                          icon: passwordBool2
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
                      onPress: () async {
                        if (passError() == 0) {
                          try {
                            UserCredential userCredential =
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: email,
                              password: password1,
                            );
                            if (userCredential.user != null) {
                              Navigator.pushNamed(
                                  context, LoginScreen.id);
                            }
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              _showMyDialogSignUp(getMessage(3));
                            } else if (e.code == 'email-already-in-use') {
                              _showMyDialogSignUp(getMessage(4));
                            } else if (e.code == 'invalid-email') {
                              _showMyDialogSignUp(getMessage(5));
                            }
                          } catch (e) {
                            print(e);
                          }
                        } else {
                          _showMyDialogSignUp(getMessage(passError()));
                        }
                      },
                      // onPress: (){},
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
  int passError() {
    int passError;
    if (password1 == null || password2 == null || email == null) {
      passError = 1;
    } else if (password1 != password2) {
      passError = 2;
    } else if (password1.length < 6 || password2.length < 6) {
      passError = 3;
    } else {
      passError = 0;
    }
    return passError;
  }

  String getMessage(int errorNo) {
    String errorText='Default';
    switch (errorNo) {
      case 1:
        errorText = 'Enter All the Credentials';
        break;
      case 2:
        errorText = 'Passwords do not match';
        break;
      case 3:
        errorText = 'Weak Password';
        break;
      case 4:
        errorText = 'Email Already In Use';
        break;
      case 5:
        errorText = 'Invalid Email';
        break;
    }
    return errorText;
  }

  Future<void> _showMyDialogSignUp(String input) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          content: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                input,
                style: TextStyle(color: kSecondaryColor, fontSize: 16),
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'OK',
                style: TextStyle(color: kSecondaryColor),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
