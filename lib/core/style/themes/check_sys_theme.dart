import 'package:flutter/material.dart';

bool isSyDark(context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  bool isPhoneDarkMode = brightness == Brightness.dark;
  // debugPrint('sy them is dark ==>$isPhoneDarkMode');
  return isPhoneDarkMode;
}

/* use check in color widget
 color: cubit.useSystemTheme? isSyDark(context) ? dSecColor: lSecColor
                            : cubit.isDark ? dSecColor: lSecColor,
 */