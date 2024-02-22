import 'package:dio/dio.dart';
import 'package:my_country/models/city_model.dart';

class CitySrevice {
  final Dio dio;

  CitySrevice(this.dio);

  Future<List<CityModel>> getCity({required String city}) async {
    final response = await dio.get(
        'https://api.api-ninjas.com/v1/city?name=$city&X-Api-Key=mJDj50dOsL5TDESrqGKunQ==paP5jqCvAIQ6s9eN');

    List<dynamic> data = response.data;
    // List<CityModel> cities = [];
    // CityModel.fromJson(cities);
    List<CityModel> cities =
        data.map((json) => CityModel.fromJson(json)).toList();
    //data.map((json) => CityModel.fromJson(json)).toList();

    return cities;
  }
}
