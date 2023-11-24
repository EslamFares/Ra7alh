import 'package:flutter/material.dart';
import 'package:ra7alh/feature/signup/presentation/widgets/have_account.dart';
import '../widgets/signup_form_body.dart';
import '../widgets/welcome_text.dart';

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
          SliverToBoxAdapter(child: SizedBox(height: 80)),
          SliverToBoxAdapter(child: WelcomeText()),
          SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(child: SignUpFormBody()),
          SliverToBoxAdapter(child: HaveAccount()),
        ],
      ),
    )));
  }
}
