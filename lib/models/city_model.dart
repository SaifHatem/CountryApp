class CityModel {
  final String name;

  final String country;
  final int population;
  final bool isCapital;

  const CityModel(
      {required this.name,
      required this.country,
      required this.population,
      required this.isCapital});

  factory CityModel.fromJson(json) {
    return CityModel(
      name: json['name'],
      country: json['country'],
      population: json['population'],
      isCapital: json['is_capital'],
    );
  }
}
