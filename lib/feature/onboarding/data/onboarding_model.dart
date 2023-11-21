import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/utils/app_strings.dart';

class OnBoardingModel {
  final String imgPath, title, subtitle;

  OnBoardingModel(
      {required this.imgPath, required this.title, required this.subtitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      imgPath: AppAssets.splash1,
      title: AppStrings.splashTextH1,
      subtitle: AppStrings.splashTextB1),
  OnBoardingModel(
      imgPath: AppAssets.splash2,
      title: AppStrings.splashTextH2,
      subtitle: AppStrings.splashTextB2),
  OnBoardingModel(
      imgPath: AppAssets.splash3,
      title: AppStrings.splashTextH3,
      subtitle: AppStrings.splashTextB3),
  OnBoardingModel(
      imgPath: AppAssets.splash4,
      title: AppStrings.splashTextH4,
      subtitle: AppStrings.splashTextB4),
  OnBoardingModel(
      imgPath: AppAssets.splash5,
      title: AppStrings.splashTextH5,
      subtitle: AppStrings.splashTextB5),
];
