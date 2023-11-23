import 'package:flutter/material.dart';
import 'package:ra7alh/feature/home/presentation/widgets/custom_home_appbar.dart';

class HistoricalPeriodDetailsView extends StatelessWidget {
  const HistoricalPeriodDetailsView({super.key});
  // final HistoricalPeriodModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHomeAppBar(onTap: () {}),
      body: const Center(
        child: Text(
          'model.name',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
