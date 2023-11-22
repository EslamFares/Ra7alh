import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/custom_btn.dart';
import 'package:ra7alh/core/widgets/global_text_form.dart';
import 'package:ra7alh/core/widgets/show_snack.dart';
import 'package:ra7alh/feature/signin/presentation/cubit/signin_cubit.dart';
import 'package:ra7alh/feature/signin/presentation/cubit/signin_state.dart';

import '../../../../core/routers/app_routes.dart';
import '../../../signup/presentation/widgets/custom_text_button.dart';

class SignInFormBody extends StatelessWidget {
  const SignInFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInFailState) {
          showSnack(context,
              contentType: ContentType.failure, message: state.errMsg);
        } else if (state is SignInSuccesState) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? context.pushReplacement(AppRoutes.homeView)
              : showSnack(context,
                  contentType: ContentType.warning,
                  message: 'please, check your Email to verify your account');
        }
      },
      builder: (context, state) {
        SignInCubit cubit = SignInCubit.get(context);
        return Form(
          key: cubit.signInFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
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
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    onTap: () {},
                    text: AppStrings.forgotPassword,
                  ),
                ),
                const SizedBox(height: 70),
                state is SignInLoadingState
                    ? const CircularProgressIndicator()
                    : CustomBtn(
                        text: AppStrings.signUp,
                        onTap: () {
                          if (cubit.signInFormKey.currentState!.validate()) {
                            cubit.signInWithEmailAndPassword();
                          } else {
                            showSnack(context,
                                contentType: ContentType.failure,
                                message: 'please, enter data...');
                          }
                        }),
              ],
            ),
          ),
        );
      },
    );
  }
}
