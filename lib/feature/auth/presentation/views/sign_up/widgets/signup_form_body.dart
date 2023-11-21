import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/custom_btn.dart';
import 'package:ra7alh/core/widgets/global_text_form.dart';
import 'package:ra7alh/core/widgets/show_snack.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:ra7alh/feature/auth/presentation/cubit/auth_state.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/widgets/checkbox_termscondition.dart';

class SignUpFormBody extends StatelessWidget {
  const SignUpFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpFailState) {
          showSnack(context,
              contentType: ContentType.failure, message: state.errMsg);
        } else if (state is SignUpSuccesState) {
          context.pushReplacement(AppRoutes.homeView);
        }
      },
      builder: (context, state) {
        AuthCubit cubit = AuthCubit.get(context);
        return Form(
          key: cubit.signUpFormKey,
          child: Column(
            children: [
              GlobalTextForm(
                  textController: cubit.firstNameCtrl,
                  hintText: 'Eslam',
                  labelText: 'First Name'),
              GlobalTextForm(
                  textController: cubit.lastNameCtrl,
                  hintText: 'Fares',
                  labelText: 'Last Name'),
              GlobalTextForm(
                  textController: cubit.emailCtrl,
                  hintText: 'eslam@gmail.com',
                  labelText: 'Email Address'),
              GlobalTextForm(
                textController: cubit.passwordCtrl,
                hintText: '•••••••••••••',
                labelText: 'Password',
                isPass: cubit.ispass,
                moreValidation: () {
                  if (cubit.passwordCtrl.text.length < 6) {
                    return 'password at leaset 6!';
                  }
                  return null;
                },
                showEndButton: true,
                onTapShow: cubit.changeShowPassword,
              ),
              const CheckBoxTermsAndCondition(),
              const SizedBox(height: 88),
              state is SignUpLoadingState
                  ? const CircularProgressIndicator()
                  : CustomBtn(
                      text: AppStrings.signUp,
                      onTap: () {
                        if (cubit.signUpFormKey.currentState!.validate()) {
                          if (cubit.isagreeTermsCondition) {
                            cubit.signUpWithEmailAndPassword();
                          } else {
                            showSnack(context,
                                contentType: ContentType.warning,
                                message: 'agree to our Terms and Condition..');
                          }
                        } else {
                          showSnack(context,
                              contentType: ContentType.failure,
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
