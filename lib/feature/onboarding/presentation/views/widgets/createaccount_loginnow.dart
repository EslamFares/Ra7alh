import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/database/cash/getstorage_helper.dart';
import 'package:ra7alh/core/routers/routes.dart';
import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/custom_btn.dart';

class CreateAccountOrLoginNow extends StatelessWidget {
  const CreateAccountOrLoginNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBtn(
            text: AppStrings.createAccount,
            onTap: () {
              GetStorageHelper.writeData('isfisrttime', false);
              context.pushReplacement(Routes.signUpView);
            }),
        TextButton(
            onPressed: () {
              GetStorageHelper.writeData('isfisrttime', false);
              context.pushReplacement(Routes.loginView);
            },
            child: const Text(
              AppStrings.loginNow,
              style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontFamily: AppAssets.fontPoppins),
            ))
      ],
    );
  }
}
