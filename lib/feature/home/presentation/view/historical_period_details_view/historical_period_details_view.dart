import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/data/models/historical_period_model.dart';
import 'package:ra7alh/feature/home/presentation/widgets/Details_body_section.dart';
import 'package:ra7alh/feature/home/presentation/widgets/custom_home_appbar.dart';
import 'package:ra7alh/feature/home/presentation/widgets/options_list_view.dart';

class HistoricalPeriodDetailsView extends StatelessWidget {
  const HistoricalPeriodDetailsView(this.model, {super.key});
  final HistoricalPeriodModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHomeAppBar(onTap: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: DetailsBodySection(
                    name: model.name,
                    imgUrl: model.image,
                    description: model.description)),
            const SliverToBoxAdapter(
              child: Column(
                children: [
                  TilteText(AppStrings.historicalPeriods),
                  // OptionsListView(list: list, path: path)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
