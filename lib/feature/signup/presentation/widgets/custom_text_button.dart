import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onTap,
    this.text,
    this.child,
    this.fontSized,
  });
  final VoidCallback onTap;
  final String? text;
  final double? fontSized;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: child ??
            Text(text ?? 'click',
                style: AppTextStyles.font16PoppinsUnderLine
                    .copyWith(fontSize: fontSized ?? 14)));
  }
}
