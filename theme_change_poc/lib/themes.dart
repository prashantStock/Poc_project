import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  final light = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey[300],
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark, toolbarTextStyle: TextTheme(
        headline1: TextStyle(color:
        Colors.black)
      ).bodyText2, titleTextStyle: TextTheme(
        headline1: TextStyle(color:
        Colors.black)
      ).headline6
    ),
  );
  final dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey[800],
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light, toolbarTextStyle: TextTheme(
        headline1: TextStyle(
          color: Colors.white
        )
      ).bodyText2, titleTextStyle: TextTheme(
        headline1: TextStyle(
          color: Colors.white
        )
      ).headline6
    ),
    backgroundColor: Colors.black,
  );
}