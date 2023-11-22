import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_strings.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(text ?? AppStrings.welcome,
          style: AppTextStyles.font28PoppinsBlacBold),
    );
  }
}
