import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/feature/auth/presentation/widgets/custom_text_button.dart';

class CheckBoxTermsAndCondition extends StatefulWidget {
  const CheckBoxTermsAndCondition({super.key});

  @override
  State<CheckBoxTermsAndCondition> createState() =>
      _CheckBoxTermsAndConditionState();
}

class _CheckBoxTermsAndConditionState extends State<CheckBoxTermsAndCondition> {
  bool? agreeForTermsAndCondition = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
            value: agreeForTermsAndCondition,
            onChanged: (value) {
              setState(() {
                agreeForTermsAndCondition = value;
              });
            }),
        Text(
          AppStrings.iHaveAgreeToOur,
          style: AppTextStyles.font16PoppinsDarkW500.copyWith(fontSize: 14),
        ),
        CustomTextButton(onTap: () {}, text: AppStrings.termsAndCondition)
      ],
    );
  }
}
