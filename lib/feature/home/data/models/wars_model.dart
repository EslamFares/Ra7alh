import 'package:ra7alh/core/models/data_stander_model.dart';

class WarsModel extends DataStanderModel {
  WarsModel({
    required super.name,
    required super.image,
    required super.description,
  });
  factory WarsModel.fromJson(jsonData) {
    return WarsModel(
        name: jsonData['name'],
        image: jsonData['image'],
        description: jsonData['description']);
  }
}
