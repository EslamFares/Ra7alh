import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle font22Bold =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  //========= font family (Pacifico) ============
  static const TextStyle font22PacificoBlueW400 = TextStyle(
    fontSize: 22,
    fontFamily: 'Pacifico',
    color: AppColors.blue,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle font50PacificoBluew500 = TextStyle(
    fontSize: 50,
    fontFamily: 'Pacifico',
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );
  //============== font family (Poppins) ================
  static const TextStyle font16PoppinsUnderLine = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    decoration: TextDecoration.underline,
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
  static const TextStyle font18PoppinsBuleDarkW500 = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    color: AppColors.blue,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle font20PoppinsBuleDarkW500 = TextStyle(
    fontSize: 20,
    fontFamily: 'Poppins',
    color: AppColors.blue,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle font18PoppinsBlackBold = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font22PoppinsBuleDarkW500 = TextStyle(
    fontSize: 22,
    fontFamily: 'Poppins',
    color: AppColors.blue,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle font24PoppinsBlackBold = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font24PoppinsBlueBold = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    color: AppColors.blue,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font30PoppinsBlacBold = TextStyle(
    fontSize: 30,
    fontFamily: 'Poppins',
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
}
