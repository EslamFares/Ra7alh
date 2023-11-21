import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/custom_btn.dart';
import 'package:ra7alh/core/widgets/global_text_form.dart';
import 'package:ra7alh/feature/auth/presentation/views/sign_up/widgets/checkbox_termscondition.dart';

class SignUpFormBody extends StatefulWidget {
  const SignUpFormBody({super.key});

  @override
  State<SignUpFormBody> createState() => _SignUpFormBodyState();
}

class _SignUpFormBodyState extends State<SignUpFormBody> {
  final TextEditingController firstNameCtrl = TextEditingController();
  final TextEditingController lastNameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  var signUpFormKey = GlobalKey<FormState>();
  bool ispass = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signUpFormKey,
      child: Column(
        children: [
          GlobalTextForm(
            textController: firstNameCtrl,
            hintText: 'Eslam',
            labelText: 'First Name',
          ),
          GlobalTextForm(
            textController: lastNameCtrl,
            hintText: 'Fares',
            labelText: 'Last Name',
          ),
          GlobalTextForm(
            textController: emailCtrl,
            hintText: 'eslam@gmail.com',
            labelText: 'Email Address',
          ),
          GlobalTextForm(
            textController: passwordCtrl,
            hintText: '•••••••••••••',
            labelText: 'Password',
            isPass: ispass,
            moreValidation: () {
              if (passwordCtrl.text.length < 6) {
                return 'password at leaset 6!';
              }
              return null;
            },
            showEndButton: true,
            onTapShow: () {
              setState(() {
                ispass = !ispass;
              });
            },
          ),
          const CheckBoxTermsAndCondition(),
          const SizedBox(height: 88),
          CustomBtn(
              text: AppStrings.signUp,
              onTap: () {
                // if (signUpFormKey.currentState!.validate()) {
                //   debugPrint('done ===> sign Up');
                // }
              }),
        ],
      ),
    );
  }
}
