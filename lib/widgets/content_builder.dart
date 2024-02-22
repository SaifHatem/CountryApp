import 'package:flutter/material.dart';
import 'package:my_country/models/contenet_card_model.dart';

import 'package:my_country/widgets/custom_contenet_card.dart';

import '../views/cities_in_each_card/africa_view.dart';
import '../views/cities_in_each_card/asia_view.dart';
import '../views/cities_in_each_card/australia_view.dart';
import '../views/cities_in_each_card/europe_view.dart';
import '../views/cities_in_each_card/northe_america.dart';
import '../views/cities_in_each_card/south_america_view.dart';

class ContenentCardsBuilder extends StatelessWidget {
  const ContenentCardsBuilder({
    super.key,
  });

  final List<CardModel> model = const [
    CardModel(
      cardImage: 'assets/images/white_africa.png',
      cardName: 'Africa',
    ),
    CardModel(
      cardImage: 'assets/images/white_europe.png',
      cardName: 'Europe',
    ),
    CardModel(
      cardImage: 'assets/images/white_asia.png',
      cardName: 'Asia',
    ),
    CardModel(
      cardImage: 'assets/images/white_north_america.png',
      cardName: 'North America',
    ),
    CardModel(
      cardImage: 'assets/images/white_south_america.png',
      cardName: 'South Aamerica',
    ),
    CardModel(
      cardImage: 'assets/images/white_autralia.png',
      cardName: 'Australia',
    ),
  ];

  void _onCardTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const AfricaView();
          }),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EuropeView();
          }),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const AsiaView();
          }),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const NorthAmericaView();
          }),
        );
        break;

      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const SouthAmericaView();
          }),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const AustraliaView();
          }),
        );
        break;

      // Add cases for other indices if needed
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: model.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _onCardTap(context, index);
            },
            child: CustomContenent(
              contenentModel: model[index],
            ),
          );
        },
      ),
    );
  }
}
