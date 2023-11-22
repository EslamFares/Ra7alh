import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/feature/signup/presentation/widgets/custom_text_button.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppStrings.alreadyHaveAnAccount),
        CustomTextButton(
            onTap: () {
              context.pushReplacement(AppRoutes.signInView);
            },
            text: AppStrings.signIn)
      ],
    );
  }
}
