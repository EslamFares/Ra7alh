import 'package:ra7alh/feature/home/data/models/wars_model.dart';

import '../../../../core/models/data_stander_model.dart';

class HistoricalPeriodModel extends DataStanderModel {
  final List<WarsModel> wars;

  HistoricalPeriodModel(
      {required super.name,
      required super.image,
      required super.description,
      required this.wars});

  factory HistoricalPeriodModel.fromJson(jsonData, warsList) {
    return HistoricalPeriodModel(
        name: jsonData['name'],
        image: jsonData['image'],
        description: jsonData['description'],
        wars: warsList);
  }
}
