import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/custom_btn.dart';
import 'package:ra7alh/core/widgets/global_text_form.dart';
import 'package:ra7alh/core/widgets/show_snack.dart';
import 'package:ra7alh/feature/signup/presentation/cubit/signup_cubit.dart';
import 'package:ra7alh/feature/signup/presentation/cubit/signup_state.dart';
import 'package:ra7alh/feature/signup/presentation/widgets/checkbox_termscondition.dart';

class SignUpFormBody extends StatelessWidget {
  const SignUpFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailState) {
          showSnack(context,
              contentType: ContentType.failure, message: state.errMsg);
        } else if (state is SignUpSuccesState) {
          showSnack(context,
              contentType: ContentType.help,
              title: 'Hi There! ',
              timeSec: 10,
              message:
                  'Congratulations! your account is created .... please, check your Email to verify your account');
          context.pushReplacement(AppRoutes.signInView);
        }
      },
      builder: (context, state) {
        SignUpCubit cubit = SignUpCubit.get(context);
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
                showEndButton: true,
                onTapShow: cubit.changeShowPassword,
              ),
              const CheckBoxTermsAndCondition(),
              const SizedBox(height: 88),
              state is SignUpLoadingState
                  ? const CircularProgressIndicator()
                  : CustomBtn(
                      text: AppStrings.signUp,
                      onTap: () async {
                        if (cubit.signUpFormKey.currentState!.validate()) {
                          if (cubit.isagreeTermsCondition) {
                            await cubit.signUpWithEmailAndPassword();
                          } else {
                            showSnack(context,
                                contentType: ContentType.warning,
                                message: 'agree to our Terms and Condition..');
                          }
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
