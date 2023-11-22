import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle font22Bold =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const TextStyle font22PacificoBlueW400 = TextStyle(
    fontSize: 22,
    fontFamily: 'Pacifico',
    color: AppColors.blueDark,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle font50PacificoBluew500 = TextStyle(
    fontSize: 50,
    fontFamily: 'Pacifico',
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle font24PoppinsBlackBold = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font16PoppinsGrayW500 = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    color: AppColors.gray,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle font16PoppinsDarkW500 = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    color: AppColors.dark,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle font28PoppinsBlacBold = TextStyle(
    fontSize: 30,
    fontFamily: 'Poppins',
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font16UnderLine = TextStyle(
      fontSize: 16,
      decoration: TextDecoration.underline,
      fontFamily: 'Poppins');
}
