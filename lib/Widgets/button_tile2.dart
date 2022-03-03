import 'package:flutter/material.dart';

import '../palette.dart';

class ButtonTile2 extends StatelessWidget {
  final Function onPress;
  final String text;
  ButtonTile2({required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: TextButton(
        onPressed: onPress(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 15, color: kPrimaryColor),
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  side: BorderSide(color: kPrimaryColor)),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
      ),
    );
  }
}
