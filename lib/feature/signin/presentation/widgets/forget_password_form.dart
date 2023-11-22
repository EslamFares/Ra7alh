import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routers/app_routes.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../../../../core/widgets/global_text_form.dart';
import '../../../../core/widgets/show_snack.dart';
import '../cubit/signin_cubit.dart';
import '../cubit/signin_state.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is ForgetSuccesState) {
          showSnack(context,
              timeSec: 10,
              contentType: ContentType.help,
              message: 'check your email');
          context.pushReplacement(AppRoutes.signInView);
        }
        if (state is ForgetFailState) {
          showSnack(context,
              contentType: ContentType.help, message: state.errMsg);
        }
      },
      builder: (context, state) {
        SignInCubit cubit = SignInCubit.get(context);
        return Form(
          key: cubit.forgetFormKey,
          child: Column(
            children: [
              GlobalTextForm(
                  textController: cubit.forgetEmailCtrl,
                  hintText: 'eslam@gmail.com',
                  labelText: 'Email Address'),
              const SizedBox(height: 70),
              state is ForgetLoadingState
                  ? const CircularProgressIndicator()
                  : CustomBtn(
                      text: AppStrings.sendResetPasswordLink,
                      onTap: () async {
                        if (cubit.forgetFormKey.currentState!.validate()) {
                          await cubit.resetPAsswordWithLink();
                        } else {
                          showSnack(context,
                              contentType: ContentType.warning,
                              message: 'please, enter data...');
                        }
                      }),
            ],
          ),
        );
      },
    );
  }
}
