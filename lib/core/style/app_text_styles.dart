import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle font22Bold =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const TextStyle font22PacificoBlueW400 = TextStyle(
    fontSize: 64,
    fontFamily: 'Pacifico',
    color: AppColors.blue,
    fontWeight: FontWeight.w400,
  );
}
