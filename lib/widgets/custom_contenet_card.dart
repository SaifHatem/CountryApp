import 'package:flutter/material.dart';
import 'package:my_country/models/contenet_card_model.dart';

class CustomContenent extends StatelessWidget {
  const CustomContenent({super.key, required this.contenentModel});

  final CardModel contenentModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        //color: Colors.grey,
        image: DecorationImage(
          image: AssetImage(contenentModel.cardImage),
        ),
      ),
      child: Center(
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            contenentModel.cardName,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
