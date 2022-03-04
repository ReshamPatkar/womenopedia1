import 'package:flutter/material.dart';

// Color kExtraDarkPrimaryColor = Color(0xFF231942);
Color kButtonBackground = Color(0xFF1D1D27);
Color kDarkPrimaryColor = Color(0xFF4255ab);
Color kPrimaryColor = Color(0xFF6558F5);
Color kSecondaryColor = Color(0xFF9058f5);
Color kAccentColor = Color(0xFF58ddf5);
Color kDarkAccentColor = Color(0xFF3e9aab);
Color kBackGroundColor = Color(0xFF424242);
var kGradientColor = [
  Color(0xFFbb3fdd),
  Color(0xFFfb6da9),
  Color(0xFFff9f7c),
];

Color kPrimaryTextColor = Color(0xFF212121);
Color kSecondaryTextColor = Color(0xFF757575);
Color kDividerColor = Color(0xFFBDBDBD);

Color kTextColor = Color(0xFFFFFFFF);

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFF6F6F6), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF6558F5), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);

// class MyThemes {
//   static final darkTheme = ThemeData.dark().copyWith(
//     scaffoldBackgroundColor: Colors.grey.shade900,
//     primaryColor: Colors.black,
//     colorScheme: ColorScheme.dark(),
//     iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
//   );

//   static final lightTheme = ThemeData.light().copyWith(
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: Colors.white,
//     colorScheme: ColorScheme.light(),
//     iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
//   );
// }
