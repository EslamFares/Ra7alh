import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const dPrimaryColor = Color(0xff192734);
const dSecColor = Color(0xff22303c);

//===================

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    primaryColor: dPrimaryColor,
    scaffoldBackgroundColor: dPrimaryColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      color: dPrimaryColor,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: dPrimaryColor,
          systemNavigationBarColor: dPrimaryColor,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light),
    ),
  );
}
