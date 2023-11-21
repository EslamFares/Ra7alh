import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_state.dart';
import 'package:ra7alh/feature/auth/presentation/widgets/custom_text_button.dart';

class CheckBoxTermsAndCondition extends StatelessWidget {
  const CheckBoxTermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        AuthCubit cubit = AuthCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
                value: cubit.isagreeTermsCondition,
                onChanged: cubit.changeAgreeTermsCondition),
            Text(
              AppStrings.iHaveAgreeToOur,
              style: AppTextStyles.font16PoppinsDarkW500.copyWith(fontSize: 14),
            ),
            CustomTextButton(onTap: () {}, text: AppStrings.termsAndCondition)
          ],
        );
      },
    );
  }
}
