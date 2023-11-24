import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/feature/signin/presentation/widgets/signin_baner.dart';
import 'package:ra7alh/feature/signin/presentation/widgets/signin_form_body.dart';
import '../../../signup/presentation/widgets/welcome_text.dart';
import '../widgets/donot_have_account.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SignInBaner()),
          SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: WelcomeText(text: AppStrings.welcomeBack))),
          SliverToBoxAdapter(child: SignInFormBody()),
          SliverToBoxAdapter(child: DonotHaveAccount()),
        ],
      ),
    );
  }
}
