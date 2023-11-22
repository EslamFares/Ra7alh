import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/utils/app_colors.dart';
import 'package:ra7alh/core/utils/app_strings.dart';

class SignInBaner extends StatelessWidget {
  const SignInBaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: AppColors.blueLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(AppStrings.appName,
              style: AppTextStyles.font50PacificoBluew500),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppAssets.pyramidsSmall,
                width: 200,
                height: 150,
                alignment: Alignment.bottomLeft,
              ),
              Image.asset(
                AppAssets.masgidSmall,
                width: 200,
                height: 150,
                alignment: Alignment.bottomRight,
              ),
            ],
          )
        ],
      ),
    );
  }
}
