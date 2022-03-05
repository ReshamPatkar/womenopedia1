import 'package:flutter/material.dart';
import 'package:womenopedia1/palette.dart';

class ButtonTile extends StatelessWidget {
  final Function() onPress;
  final String text;
  ButtonTile({required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: kPrimaryColor),
        child: TextButton(
          onPressed: onPress,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 15),
            ),
          ),
          // style: ElevatedButton.styleFrom(primary: Colors.transparent),
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.transparent)),
        ),
      ),
    );
  }
}
