import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/widgets/custom_back_button.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../signup/presentation/widgets/welcome_text.dart';
import '../widgets/forget_password_form.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButtonCupertino(),
          surfaceTintColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                  child: Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 40),
                      child: WelcomeText(text: AppStrings.forgotPasswordPage))),
              SliverToBoxAdapter(
                child: Image.asset(AppAssets.forgetPassword,
                    width: 250, height: 250),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 50)),
              const SliverToBoxAdapter(
                child: Text(AppStrings.enterYourRegisteredEmail,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.font16PoppinsDarkW500),
              ),
              const SliverToBoxAdapter(child: ForgetPasswordForm())
            ],
          ),
        ));
  }
}
