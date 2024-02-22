import 'package:flutter/material.dart';
import 'package:my_country/models/contenet_card_model.dart';
import 'package:my_country/views/city_info.dart';

class CustomCityCard extends StatelessWidget {
  const CustomCityCard({
    super.key,
    required this.cardModel,
  });

  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CityInformation(
            city: cardModel.cardName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(cardModel.cardImage),
            ),
          ),
          child: Center(
            child: Text(
              cardModel.cardName,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
