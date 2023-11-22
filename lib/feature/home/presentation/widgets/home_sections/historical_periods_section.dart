import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/presentation/widgets/historical_period.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TilteText(AppStrings.historicalPeriods),
        HistoricalPeriodOptions(),
      ],
    );
  }
}
