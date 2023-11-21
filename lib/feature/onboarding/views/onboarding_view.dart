import 'package:flutter/material.dart';
import 'package:ra7alh/core/database/cash/getstorage_helper.dart';
import 'package:ra7alh/core/utils/app_size.dart';
import 'package:ra7alh/core/widgets/custom_btn.dart';
import 'package:ra7alh/feature/onboarding/data/onboarding_model.dart';
import 'package:ra7alh/feature/onboarding/views/widgets/createaccount_loginnow.dart';
import 'package:ra7alh/feature/onboarding/views/widgets/on_boarding_body.dart';
import 'package:ra7alh/feature/onboarding/views/widgets/skip_btn.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController(initialPage: 0);

  int currentIndex = 0;

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
                  OnBoardingBody(
                    controller: controller,
                    onPageChage: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  const SizedBox(height: 60),
                  currentIndex == onBoardingData.length - 1
                      ? const CreateAccountOrLoginNow()
                      : CustomBtn(onTap: () {
                          GetStorageHelper.writeData('isfisrttime', false);
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
