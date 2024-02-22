import 'package:flutter/material.dart';
import 'package:my_country/widgets/City%20Card/africa_list_view.dart';
import 'package:my_country/widgets/custom_appbar.dart';

class AfricaView extends StatelessWidget {
  const AfricaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        appbarTitle: 'Africa',
      ),
      body: AfricaListView(),
    );
  }
}
