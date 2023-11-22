import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/presentation/widgets/category_characters.dart';
import 'package:ra7alh/feature/home/presentation/widgets/listview_category_item.dart';
import '../../../../../core/utils/app_assets.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TilteText(AppStrings.historicalSouvenirs),
        CategoryListView(
          item: ListViewCategoryItem(
              imgUrl: AppAssets.imgUrlSovenir, text: 'Sovenir'),
          itemCount: 5,
        ),
      ],
    );
  }
}
