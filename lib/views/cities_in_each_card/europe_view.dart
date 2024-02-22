import 'package:flutter/material.dart';
import 'package:my_country/widgets/City%20Card/europe_list_view.dart';
import 'package:my_country/widgets/custom_appbar.dart';

class EuropeView extends StatelessWidget {
  const EuropeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        appbarTitle: 'Europe',
      ),
      body: EuropeListView(),
    );
  }
}
