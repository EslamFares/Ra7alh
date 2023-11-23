class HistoricalPeriodModel {
  final String name;
  final String image;
  final String description;
  final Map<String, dynamic> wars;

  HistoricalPeriodModel(
      {required this.name,
      required this.image,
      required this.description,
      required this.wars});

  factory HistoricalPeriodModel.fromJson(jsonData) {
    return HistoricalPeriodModel(
        name: jsonData['name'],
        image: jsonData['image'],
        description: jsonData['description'],
        wars: jsonData['wars']);
  }
}
