import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/database/cash/getstorage_helper.dart';
import 'package:ra7alh/core/routers/routes.dart';
import 'package:ra7alh/core/utils/app_strings.dart';

class SkipBtn extends StatelessWidget {
  const SkipBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          GetStorageHelper.writeData('isfisrttime', false);
          context.pushReplacement(Routes.signUpView);
        },
        child: const Text(
          AppStrings.skip,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
