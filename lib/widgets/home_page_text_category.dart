import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHomePageCategory extends StatelessWidget {
  const TextHomePageCategory({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding: const EdgeInsets.all(60),
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: FadeInUp(
        child: Text(
          "Know about your country",
          //"The 30 Most Stunning Movie\nPosters of 2019",
          textAlign: TextAlign.center,
          style: GoogleFonts.aBeeZee(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
