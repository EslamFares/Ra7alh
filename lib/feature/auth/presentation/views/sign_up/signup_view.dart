import 'package:flutter/material.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/widgets/have_account.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/widgets/signup_form_body.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/widgets/welcome_text.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 100)),
          SliverToBoxAdapter(child: WelcomeText()),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: SignUpFormBody()),
          SliverToBoxAdapter(child: HaveAccount()),
        ],
      ),
    )));
  }
}
