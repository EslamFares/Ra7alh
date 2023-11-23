import 'package:flutter/material.dart';
import 'package:ra7alh/feature/home/data/models/historical_period_model.dart';

import 'package:ra7alh/feature/home/presentation/widgets/description_image_details.dart';
import 'package:ra7alh/feature/home/presentation/widgets/titlel_lfe_key.dart';

class DetailsBodySection extends StatelessWidget {
  const DetailsBodySection({
    super.key,
    required this.model,
  });
  final HistoricalPeriodModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TitleLifeKey(name: model.name),
        const SizedBox(height: 30),
        DescriptionAndImageDetails(
            description: model.description, imgUrl: model.image)
      ],
    );
  }
}
