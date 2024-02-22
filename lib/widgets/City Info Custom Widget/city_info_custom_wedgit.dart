import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:my_country/models/city_model.dart';

class CitiesCategory extends StatelessWidget {
  const CitiesCategory({super.key, required this.cityModel});

  final CityModel cityModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            FadeInUp(
              delay: const Duration(milliseconds: 1000),
              child: const Icon(
                Icons.location_city_rounded,
                size: 30,
                color: Colors.orange,
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 1000),
              child: const Text(
                " City Name : ",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                ),
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 1500),
              child: Text(
                cityModel.name,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            FadeInUp(
              delay: const Duration(milliseconds: 2500),
              child: const Icon(
                Icons.place,
                size: 30,
                color: Colors.blue,
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 2500),
              child: const Text(
                " Country Name : ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 3000),
              child: Text(
                cityModel.country,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            FadeInUp(
              delay: const Duration(milliseconds: 3000),
              child: const Icon(
                Icons.people_alt_rounded,
                size: 30,
                color: Colors.green,
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 3000),
              child: const Text(
                ' Population : ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                ),
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 3500),
              child: Text(
                '${cityModel.population.toString()}',
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            FadeInUp(
              delay: const Duration(milliseconds: 4000),
              child: const Icon(
                Icons.add_home_sharp,
                size: 30,
                color: Colors.purple,
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 4000),
              child: const Text(
                ' Is Capital ? : ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                ),
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 4500),
              child: Text(
                '${cityModel.isCapital.toString()}',
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
