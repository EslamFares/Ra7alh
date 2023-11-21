import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_colors.dart';
import 'package:ra7alh/core/utils/app_size.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key, required this.onTap, this.text, this.color, this.cutmChild});
  final Color? color;
  final String? text;
  final VoidCallback onTap;
  final Widget? cutmChild;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * .9,
      height: 56,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: color ?? AppColors.blue),
        child: cutmChild ??
            Text(
              text ?? 'Next',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
      ),
    );
  }
}
