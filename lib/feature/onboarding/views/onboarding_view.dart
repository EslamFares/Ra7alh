import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_size.dart';
import 'package:ra7alh/core/widgets/custom_btn.dart';
import 'package:ra7alh/feature/onboarding/views/widgets/on_boarding_body.dart';
import 'package:ra7alh/feature/onboarding/views/widgets/skip_btn.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: context.height,
          width: context.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: context.height * .01),
                  const SkipBtn(),
                  OnBoardingBody(controller: controller),
                  const SizedBox(height: 80),
                  CustomBtn(onTap: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.bounceIn);
                  }),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
