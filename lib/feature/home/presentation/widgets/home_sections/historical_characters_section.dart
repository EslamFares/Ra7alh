import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/presentation/widgets/category_list_view.dart';
import 'package:ra7alh/feature/home/presentation/widgets/list_view_category_item.dart';
import '../../../../../core/utils/app_assets.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TilteText(AppStrings.historicalCharacters),
        CategoryListView(
          item: ListViewCategoryItem(
              imgUrl: AppAssets.imgUrlKings1, text: 'Napoleon'),
          itemCount: 5,
        ),
      ],
    );
  }
}
