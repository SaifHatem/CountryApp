import 'package:flutter/material.dart';

import 'package:my_country/views/home_view.dart';

void main() {
  runApp(const CountriesApp());
}

class CountriesApp extends StatelessWidget {
  const CountriesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
