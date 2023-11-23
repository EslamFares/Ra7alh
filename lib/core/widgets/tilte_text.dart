import 'package:flutter/material.dart';
import '../style/app_text_styles.dart';

class TilteText extends StatelessWidget {
  const TilteText(this.txt, {super.key, this.padding});
  final String txt;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(top: 32, bottom: 8),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(txt,
              textAlign: TextAlign.center,
              style: AppTextStyles.font22PoppinsBuleDarkW500)),
    );
  }
}
