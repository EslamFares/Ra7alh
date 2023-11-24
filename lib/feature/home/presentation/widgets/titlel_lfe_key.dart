import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_assets.dart';

class TitleLifeKey extends StatelessWidget {
  const TitleLifeKey({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Text('About $name',
              textAlign: TextAlign.center,
              style: AppTextStyles.font24PoppinsBlueBold),
        ),
        const SizedBox(width: 10),
        Image.asset(AppAssets.iconLifeKey,
            height: 45, width: 30, fit: BoxFit.fitWidth)
      ],
    );
  }
}
