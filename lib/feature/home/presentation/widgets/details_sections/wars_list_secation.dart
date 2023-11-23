import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/widgets/options_list_view.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/data/models/historical_period_model.dart';

class WarsListSecation extends StatelessWidget {
  const WarsListSecation({
    super.key,
    required this.model,
  });

  final HistoricalPeriodModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top: 0, right: 0, child: Image.asset(AppAssets.iconNsr)),
        Column(
          children: [
            TilteText('${model.name} wars'),
            OptionsListView(list: model.wars)
          ],
        ),
      ],
    );
  }
}
