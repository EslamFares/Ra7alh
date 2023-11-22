import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import '../../../../core/routers/app_routes.dart';
import '../../../signup/presentation/widgets/custom_text_button.dart';

class DonotHaveAccount extends StatelessWidget {
  const DonotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(AppStrings.dontHaveAnAccount),
          CustomTextButton(
              onTap: () {
                context.pushReplacement(AppRoutes.signUpView);
              },
              text: AppStrings.signUp)
        ],
      ),
    );
  }
}
