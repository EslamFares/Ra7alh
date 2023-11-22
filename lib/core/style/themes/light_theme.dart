import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//ToDo: will change color
const lPrimaryColor = Colors.pink;
const lSecColor = Colors.white;
const lThirdColor = Colors.pinkAccent;

ThemeData lightTheme() {
  return ThemeData(
      primaryColor: lPrimaryColor,
      // primarySwatch: lPrimaryColor,
      scaffoldBackgroundColor: lPrimaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: lThirdColor),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),

        iconTheme: IconThemeData(color: Colors.black),
        color: lPrimaryColor,
        centerTitle: false,
        // backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: lPrimaryColor,
            systemNavigationBarColor: lPrimaryColor,
            statusBarIconBrightness: Brightness.dark,
            // systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark),
      ),
      // iconTheme:const IconThemeData(color: Colors.red, size: 25),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: lPrimaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: lThirdColor,
          elevation: 10));
}
