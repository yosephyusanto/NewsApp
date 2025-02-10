import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    appBarTheme: appBartTheme(),
  );
}

AppBarTheme appBartTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Color(0xFF888888),
    ),
    titleTextStyle: TextStyle(
      color: Color(0xFF888888),
      fontSize: 18,
    ),
  );
}
