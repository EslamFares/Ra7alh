import 'package:flutter/material.dart';
import 'package:ra7alh/feature/home/data/models/historical_period_model.dart';
import 'package:ra7alh/feature/home/presentation/widgets/option_item.dart';

class OptionsListView extends StatelessWidget {
  const OptionsListView(
      {super.key, required this.list, required this.onTapItem});

  final List<HistoricalPeriodModel> list;
  final Function onTapItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: double.infinity,
        child: ListView.separated(
          clipBehavior: Clip.none,
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              OptionItem(onTap: onTapItem, model: list[index]),
          separatorBuilder: (context, index) => const SizedBox(width: 16),
        ));
  }
}
