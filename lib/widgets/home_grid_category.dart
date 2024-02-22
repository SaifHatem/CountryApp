import 'package:flutter/material.dart';
import 'package:my_country/models/contenet_card_model.dart';

class GridCategory extends StatelessWidget {
  const GridCategory({super.key, required this.cardModel});

  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
    );
  }
}
