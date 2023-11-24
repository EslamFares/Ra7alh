import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra7alh/feature/home/data/models/historical_period_model.dart';
import 'package:ra7alh/feature/home/presentation/widgets/custom_home_appbar.dart';
import 'package:ra7alh/feature/home/presentation/widgets/details_sections/details_body_section.dart';
import 'package:ra7alh/feature/home/presentation/widgets/details_sections/recommenendations_list_section.dart';
import 'package:ra7alh/feature/home/presentation/widgets/details_sections/wars_list_secation.dart';

class HistoricalPeriodDetailsView extends StatelessWidget {
  const HistoricalPeriodDetailsView(this.model, {super.key});
  final HistoricalPeriodModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHomeAppBar(
          leadingIcon: CupertinoIcons.back, onTap: () => context.pop()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: DetailsBodySection(model: model)),
            SliverToBoxAdapter(child: WarsListSecation(model: model)),
            const SliverToBoxAdapter(child: RecommenendationsListSection()),
            const SliverToBoxAdapter(child: SizedBox(height: 50)),
          ],
        ),
      ),
    );
  }
}
