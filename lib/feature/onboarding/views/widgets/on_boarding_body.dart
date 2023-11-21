import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_size.dart';
import 'package:ra7alh/feature/onboarding/data/onboarding_model.dart';
import 'package:ra7alh/feature/onboarding/views/widgets/onboarding_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 550,
      child: PageView.builder(
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: context.width,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(onBoardingData[index].imgPath),
                    fit: BoxFit.contain),
              ),
            ),
            OnBoardingSmoothPageIndicator(controller: controller),
            Text(
              onBoardingData[index].title,
              style: AppTextStyles.font24PoppinsBlackBold,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(height: 16),
            Text(
              onBoardingData[index].subtitle,
              style: AppTextStyles.font16PoppinsGrayW500,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
