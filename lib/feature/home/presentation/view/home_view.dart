import 'package:flutter/material.dart';
import '../widgets/custom_home_appbar.dart';
import '../widgets/home_sections/historical_characters_section.dart';
import '../widgets/home_sections/historical_periods_section.dart';
import '../widgets/home_sections/historical_souvenirs_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomHomeAppBar(
          onTap: () {},
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: HistoricalPeriodsSection()),
              SliverToBoxAdapter(child: HistoricalCharactersSection()),
              SliverToBoxAdapter(child: HistoricalSouvenirsSection()),
            ],
          ),
        ));
  }
}
