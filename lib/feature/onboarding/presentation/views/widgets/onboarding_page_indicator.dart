import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSmoothPageIndicator extends StatelessWidget {
  const OnBoardingSmoothPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 50),
      child: SmoothPageIndicator(
          controller: controller, // PageController
          count: 5,
          effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 25,
              dotColor: AppColors.gray2,
              activeDotColor: AppColors.blue), // your preferred effect
          onDotClicked: (index) {}),
    );
  }
}
