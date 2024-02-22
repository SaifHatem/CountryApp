import 'package:flutter/material.dart';
import 'package:my_country/widgets/City%20Info%20Custom%20Widget/city_info_builder.dart';

class CityInformation extends StatelessWidget {
  const CityInformation({super.key, required this.city});

  final String city;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(167, 18, 52, 97),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Your City",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: CityInformationBuilder(
        city: city,
      ),
    );
  }
}
