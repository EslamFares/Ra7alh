import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import 'option_item.dart';

class HistoricalPeriodOptions extends StatelessWidget {
  const HistoricalPeriodOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        OptionItem(
          txt: 'Ancient \nEgypy',
          imgurl: AppAssets.imgUrl,
        ),
        SizedBox(width: 16),
        OptionItem(
          txt: 'Islamic \nEra',
          imgurl: AppAssets.imgUrl2,
        ),
      ],
    );
  }
}
