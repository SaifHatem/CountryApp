import 'package:flutter/material.dart';
import 'package:my_country/models/contenet_card_model.dart';
import 'package:my_country/widgets/City%20Card/custom_city_card.dart';

class EuropeListView extends StatelessWidget {
  const EuropeListView({super.key});

  final List<CardModel> model = const [
    CardModel(
      cardImage: 'assets/images/london.jpg',
      cardName: 'London',
    ),
    CardModel(
      cardImage: 'assets/images/liverpool.jpg',
      cardName: 'Liverpool',
    ),
    CardModel(
      cardImage: 'assets/images/madrid.jpg',
      cardName: 'Madrid',
    ),
    CardModel(
      cardImage: 'assets/images/barcelona.jpg',
      cardName: 'Barcelona',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: model.length,
      itemBuilder: (context, index) {
        return CustomCityCard(cardModel: model[index]);
      },
    );
  }
}
