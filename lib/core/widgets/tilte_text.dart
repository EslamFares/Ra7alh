import 'package:flutter/material.dart';
import '../style/app_text_styles.dart';

class TilteText extends StatelessWidget {
  const TilteText(this.txt, {super.key});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 8),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(txt,
              textAlign: TextAlign.center,
              style: AppTextStyles.font22PoppinsBuleDarkW500)),
    );
  }
}
