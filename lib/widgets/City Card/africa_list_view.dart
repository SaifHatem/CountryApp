import 'package:flutter/material.dart';
import 'package:my_country/models/contenet_card_model.dart';
import 'package:my_country/widgets/City%20Card/custom_city_card.dart';

class AfricaListView extends StatelessWidget {
  const AfricaListView({super.key});

  final List<CardModel> model = const [
    CardModel(
      cardImage: 'assets/images/aswan.jpg',
      cardName: 'Aswan',
    ),
    CardModel(
      cardImage: 'assets/images/minya.jpg',
      cardName: 'Minya',
    ),
    CardModel(
      cardImage: 'assets/images/cairo.jpg',
      cardName: 'cairo',
    ),
    CardModel(
      cardImage: 'assets/images/dakar.jpg',
      cardName: 'Dakar',
    ),
    CardModel(
      cardImage: 'assets/images/rabat.jpg',
      cardName: 'Rabat',
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
