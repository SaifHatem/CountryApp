import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_country/models/city_model.dart';
import 'package:my_country/services/city_service.dart';
import 'package:my_country/widgets/City%20Info%20Custom%20Widget/city_info_custom_wedgit.dart';

class CityInformationBuilder extends StatefulWidget {
  const CityInformationBuilder({Key? key, required this.city});

  final String city;

  @override
  State<CityInformationBuilder> createState() => _CityInformationBuilderState();
}

class _CityInformationBuilderState extends State<CityInformationBuilder> {
  late Future<CityModel> futureCity; // Change to Future<CityModel>

  @override
  void initState() {
    super.initState();
    futureCity = CitySrevice(Dio())
        .getCity(city: widget.city)
        .then((cities) => cities.first); // Get the first city from the list
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CityModel>(
      future: futureCity,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text(
              "Oops! There was an error. Please try again.",
            ),
          );
        } else if (snapshot.hasData) {
          return CitiesCategory(cityModel: snapshot.data!);
        } else {
          return const Center(
            child: Text("No data available."),
          );
        }
      },
    );
  }
}
