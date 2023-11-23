import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/data/dummy_data/dummy_data_list.dart';
import 'package:ra7alh/feature/home/presentation/widgets/data_list_view.dart';

class RecommenendationsListSection extends StatelessWidget {
  const RecommenendationsListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TilteText(AppStrings.recommendations),
        DataListView(dataList: dummyDatalist)
      ],
    );
  }
}
