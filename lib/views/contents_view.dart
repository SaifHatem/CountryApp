import 'package:flutter/material.dart';
import 'package:my_country/animations/fade_animation.dart';
import 'package:my_country/widgets/content_builder.dart';
import 'package:my_country/widgets/upper_category.dart';

class ContenentsView extends StatelessWidget {
  const ContenentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(167, 18, 52, 97),

      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0F1025),
        title: const Text(
          '',
        ),
      ),

      //backgroundColor: Color(0xffff4545),
      body: const Column(
        children: [
          HeadCategory(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FadeAnimation(
              3,
              ContenentCardsBuilder(),
            ),
          )
        ],
      ),
    );
  }
}
